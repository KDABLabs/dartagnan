import 'package:AnimalBindings/Bindings.dart' as AnimalBindings;

class MyDartAlligator extends AnimalBindings.Animal {
  @override
  void openMouth() {
    print("openMouth from Dart");
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
