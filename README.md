# Dartagnan

![Build Status](https://github.com/iamsergio/dartagnan/actions/workflows/build.yml/badge.svg)

Dartagnan is a POC of C++ Dart bindings generator.<br>
Unlike other generators, Dartagnan preserves OOP semantics when crossing language barrier.<br>
A Dart class can inherit from a C++ class, override virtual methods and still get dynamic dispatch working.<br>
In other words, whether the base class is Dart or C++ is irrelevant from the user's prespective, as inheritance
still works as supposed to.

## Example

`example/animal.h`

```cpp
#include <iostream>

class Animal {
public:
    // non-virtual! for example purposes
    void eat() {
        std::cout << "eat from C++\n";
        openMouth();
        closeMouth();
    }

    virtual void openMouth() {
        std::cout << "openMouth from C++\n";
    }

    virtual void closeMouth() {
        std::cout << "closeMouth from C++\n";
    }
};
```

<br>

`example/app/bin/main.dart`


```dart
import 'package:AnimalBindings/Bindings.dart' as AnimalBindings;

class MyDartAlligator extends AnimalBindings.Animal
{
    @override
    void openMouth() {
        print("openMouth from Dart\n");
    }
}

main() {
    final alligator = MyDartAlligator();

    /// This will call C++ eat() via FFI
    /// which in turn will call into Dart to invoke openMouth()
    /// closeMouth() will be C++ to C++ directly, as it's not overridden in Dart
    alligator.eat();

    // Prints:
    // eat from C++
    // openMouth from Dart
    // closeMouth from C++
}
```

## Trying the example

The example living in `example/` already has the bindings pre-generated. You can play with it simply by:

```
cd example/
cmake -G Ninja .
ninja # produces libAnimal.so
cd app/
dart pub get
cd ..
# Help Dart find libAnimal.so:
export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH
dart run app/bin/main.dart
```

On macOS, just edit and hardcode the library path in `generated/AnimalBindings/dart/lib/LibraryLoader.dart` , since `DYLD_LIBRARY_PATH` isn't recommended nowadays.l

## Structure of the example
- `animal.h and animal.cpp` The C++ source code we generated bindings for.
- `animal_export.h` Export macros, generated by CMake, since we need to export symbols.
- `bindings_global.h` Contains the list of headers we generate bindings for.
- `dartagnan.json` Config read by dartagnan when generating the bindings
- `typesystem.xml` Tells dartagnan which classes and enums to generate bindings for
- `app/` The dart application which will load and use the bindings
- `generated/AnimalBindings/dart/` Auto-generated Dart package containing the bindings
- `generated/AnimalBindings/dart/ffi/` Auto-generated C++ code which is needed as an intermediary, to implement virtual dispatch.

For convenience, our `libAnimal.so`'s CMakeLists.txt builds both `animal.cpp` and the autogenerated `Animal_c.cpp`. You could also have them separated
`libAnimal.so` and `libAnimalBindings.so`, which would be better in case you're targeting a 3rdparty.

## Building Dartagnan

```
git submodule init && git submodule update
cmake --preset=dev
cd build-dev && ninja
```

## Generating your own bindings 

Generating your own bindings consists basically of writing your own `typesystem.xml` file specifing what you want to generate bindings for.

Then make an invocation such as:

```
 ../build-dev/3rdparty/shiboken/sources/shiboken6/generator/shiboken6 \
 --license-file=license_template \
 --output-directory=generated \
 --generator-set=dart --skip-deprecated --clang-option=-DDARTAGNAN_BINDINGS_RUN bindings_global.h typesystem.xml

 clang-format -i ./generated/AnimalBindings/dart/ffi/Animal_c.cpp ./generated/AnimalBindings/dart/ffi/Animal_c.h
```

Dartagnan is based on shiboken, which is use to generated Python bindings for Qt.


## Features

- Single inheritance
- virtual methods
- static methods
- Some templates
- const char * <-> dart String is interchangeable
- Blacklisting methods via typesystem.xml (Shiboken feature)
- C++ destructors are called! calling `myCFunction(MyCType(10, 20))` creates a temporary `MyCType()` as expected and
destroys it at the end of expression. This is done with Dart Finalizers.



## Problems and why this is just a POC

- Templates are a PITA. The C++ needs to contain the specializations. You can't specialize from Dart if it wasn't beforehand
done in C++.

- Dart doesn't support more than one unnamed constructor. The generated bindings look like `MyClass.ctor1()`, `MyClass.ctor2()` etc.

- Actually, same for methods. Dart doesn't support overloading. Generated code is prefixed with numbers.

- Passing small and trivial-destructible structs to C++ is allocating memory. They should be passed via registers, or at the very least stack.

- C++ is complex, Dartagnan often breaks and needs patches with complex projects.

- The POC code is a mess, specially after shoehorning C++ template support.

- Dartagnan is based on shiboken's Api-extractor, which is a LLVM-based C++ parser. Api extractor brings in Qt as a dependency.

- Rebasing over new shiboken, newer LLVM and newer Qt often causes regressions.

## Future

While Dartagnan works and is even being used in production for KDDockWidgets we don't have any plans to move it from POC to something serious.<br>
The shiboken legacy is quite a burden and its usage is very involved.<br>
If someone wants to write a new backend from scratch I hope Dartagnan is a useful inspiration.

