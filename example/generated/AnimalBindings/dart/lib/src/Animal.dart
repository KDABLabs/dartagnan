/// This file is part of Dartagnan.
///
/// SPDX-FileCopyrightText: 2024 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
/// SPDX-License-Identifier: MIT
import 'dart:ffi' as ffi;import 'package:ffi/ffi.dart';import 'TypeHelpers.dart';import '../Bindings.dart';import '../LibraryLoader.dart';var _dylib = Library.instance().dylib;final _finalizerFunc = (String name) {return _dylib.lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer)>>(name);};

Map<String, ffi.NativeFinalizer> _finalizers = {};

class Animal implements ffi.Finalizable{static var s_dartInstanceByCppPtr = Map<int, Animal>();
var _thisCpp = null;bool _needsAutoDelete = false;get thisCpp => _thisCpp;set thisCpp (var ptr) {_thisCpp = ptr;ffi.Pointer<ffi.Void> ptrvoid = ptr.cast<ffi.Void>();
if (_needsAutoDelete) {
final String finalizerName = getFinalizerName();if (!_finalizers.keys.contains(runtimeType)) {_finalizers[finalizerName] = ffi.NativeFinalizer(_finalizerFunc(finalizerName).cast());
}_finalizers[finalizerName]!.attach(this, ptrvoid);
}}static bool isCached(var cppPointer) {    return s_dartInstanceByCppPtr.containsKey(cppPointer.address);}factory Animal.fromCache(var cppPointer, [needsAutoDelete = false]) {return (s_dartInstanceByCppPtr[cppPointer.address] ??
Animal.fromCppPointer(cppPointer, needsAutoDelete)) as Animal;}Animal.fromCppPointer(var cppPointer, [this._needsAutoDelete = false]) {thisCpp = cppPointer;}Animal.init() {}String getFinalizerName() {return "c_Animal_Finalizer";}//Animal()
Animal()  {final voidstar_Func_void func = _dylib.lookup<ffi.NativeFunction<voidstar_Func_void_FFI>>('c_Animal__constructor').asFunction();thisCpp = func();Animal.s_dartInstanceByCppPtr[thisCpp.address] = this;registerCallbacks();}// closeMouth() 
 closeMouth() {final void_Func_voidstar func = _dylib.lookup<ffi.NativeFunction<void_Func_voidstar_FFI>>(cFunctionSymbolName(1)).asFunction();func(thisCpp);
}static void closeMouth_calledFromC(ffi.Pointer<void> thisCpp) {
var dartInstance = Animal.s_dartInstanceByCppPtr[thisCpp.address] ;if (dartInstance == null) {print("Dart instance not found for Animal::closeMouth()! (${thisCpp.address})");throw Error();
}dartInstance.closeMouth();
}// eat() 
 eat() {final void_Func_voidstar func = _dylib.lookup<ffi.NativeFunction<void_Func_voidstar_FFI>>('c_Animal__eat').asFunction();func(thisCpp);
}// openMouth() 
 openMouth() {final void_Func_voidstar func = _dylib.lookup<ffi.NativeFunction<void_Func_voidstar_FFI>>(cFunctionSymbolName(3)).asFunction();func(thisCpp);
}static void openMouth_calledFromC(ffi.Pointer<void> thisCpp) {
var dartInstance = Animal.s_dartInstanceByCppPtr[thisCpp.address] ;if (dartInstance == null) {print("Dart instance not found for Animal::openMouth()! (${thisCpp.address})");throw Error();
}dartInstance.openMouth();
}void release() {final void_Func_voidstar func = _dylib.lookup<ffi.NativeFunction<void_Func_voidstar_FFI>>('c_Animal__destructor').asFunction();func(thisCpp);}String cFunctionSymbolName(int methodId) {    switch (methodId) {
    case 1:
        return "c_Animal__closeMouth";    case 3:
        return "c_Animal__openMouth";}
return "";}static String methodNameFromId(int methodId) {
    switch (methodId) {
    case 1:
        return "closeMouth";    case 3:
        return "openMouth";    }    throw Error();}
void registerCallbacks() {
assert(thisCpp != null);
final RegisterMethodIsReimplementedCallback registerCallback = _dylib
.lookup<ffi.NativeFunction<RegisterMethodIsReimplementedCallback_FFI>>('c_Animal__registerVirtualMethodCallback').asFunction();
final callback1 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(Animal.closeMouth_calledFromC );
registerCallback(thisCpp, callback1, 1);final callback3 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(Animal.openMouth_calledFromC );
registerCallback(thisCpp, callback3, 3);}}