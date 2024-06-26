import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
// tag=1053

typedef void_Func_voidstar = void Function(ffi.Pointer<void>);
typedef void_Func_voidstar_FFI = ffi.Void Function(ffi.Pointer<void>);
typedef RegisterMethodIsReimplementedCallback = void Function(
    ffi.Pointer<void>, ffi.Pointer<void>, int);
typedef RegisterMethodIsReimplementedCallback_FFI = ffi.Void Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Int32);
typedef SignalHandler = void Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<void>);
typedef SignalHandler_FFI = ffi.Void Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<void>);
typedef voidstar_Func_void = ffi.Pointer<void> Function();
typedef voidstar_Func_void_FFI = ffi.Pointer<void> Function();
typedef int_Func_void = int Function();
typedef int_Func_void_FFI = ffi.Int32 Function();
typedef void_Func_int = void Function(int);
typedef void_Func_ffi_Int32_FFI = ffi.Void Function(ffi.Int32);
typedef int_Func_voidstar_voidstar = int Function(
    ffi.Pointer<void>, ffi.Pointer<void>);
typedef int_Func_voidstar_voidstar_FFI = ffi.Int32 Function(
    ffi.Pointer<void>, ffi.Pointer<void>);
typedef void_Func_voidstar_int = void Function(ffi.Pointer<void>, int);
typedef void_Func_voidstar_ffi_Int32_FFI = ffi.Void Function(
    ffi.Pointer<void>, ffi.Int32);
typedef int_Func_voidstar = int Function(ffi.Pointer<void>);
typedef int_Func_voidstar_FFI = ffi.Int32 Function(ffi.Pointer<void>);
typedef void_Func_void = void Function();
typedef void_Func_void_FFI = ffi.Void Function();
typedef voidstar_Func_int_int_int_int = ffi.Pointer<void> Function(
    int, int, int, int);
typedef voidstar_Func_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_FFI
    = ffi.Pointer<void> Function(ffi.Int32, ffi.Int32, ffi.Int32, ffi.Int32);
typedef char_Func_void = int Function();
typedef char_Func_void_FFI = ffi.Int8 Function();
typedef voidstar_Func_voidstar = ffi.Pointer<void> Function(ffi.Pointer<void>);
typedef voidstar_Func_voidstar_FFI = ffi.Pointer<void> Function(
    ffi.Pointer<void>);
typedef void_Func_voidstar_voidstar = void Function(
    ffi.Pointer<void>, ffi.Pointer<void>);
typedef void_Func_voidstar_voidstar_FFI = ffi.Void Function(
    ffi.Pointer<void>, ffi.Pointer<void>);
typedef int_Func_int = int Function(int);
typedef int_Func_ffi_Int32_FFI = ffi.Int32 Function(ffi.Int32);
typedef bool_Func_voidstar_int = int Function(ffi.Pointer<void>, int);
typedef bool_Func_voidstar_ffi_Int32_FFI = ffi.Int8 Function(
    ffi.Pointer<void>, ffi.Int32);
typedef bool_Func_voidstar = int Function(ffi.Pointer<void>);
typedef bool_Func_voidstar_FFI = ffi.Int8 Function(ffi.Pointer<void>);
typedef int_Func_voidstar_int = int Function(ffi.Pointer<void>, int);
typedef int_Func_voidstar_ffi_Int32_FFI = ffi.Int32 Function(
    ffi.Pointer<void>, ffi.Int32);
typedef int_Func_voidstar_int_int = int Function(ffi.Pointer<void>, int, int);
typedef int_Func_voidstar_ffi_Int32_ffi_Int32_FFI = ffi.Int32 Function(
    ffi.Pointer<void>, ffi.Int32, ffi.Int32);
typedef void_Func_int_int = void Function(int, int);
typedef void_Func_ffi_Int32_ffi_Int32_FFI = ffi.Void Function(
    ffi.Int32, ffi.Int32);
typedef void_Func_string = void Function(ffi.Pointer<Utf8>);
typedef void_Func_string_FFI = ffi.Void Function(ffi.Pointer<Utf8>);
typedef void_Func_voidstar_string = void Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef void_Func_voidstar_string_FFI = ffi.Void Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef voidstar_Func_voidstar_voidstar = ffi.Pointer<void> Function(
    ffi.Pointer<void>, ffi.Pointer<void>);
typedef voidstar_Func_voidstar_voidstar_FFI = ffi.Pointer<void> Function(
    ffi.Pointer<void>, ffi.Pointer<void>);
typedef void_Func_voidstar_double = void Function(ffi.Pointer<void>, double);
typedef void_Func_voidstar_ffi_Double_FFI = ffi.Void Function(
    ffi.Pointer<void>, ffi.Double);
typedef string_Func_void = ffi.Pointer<Utf8> Function();
typedef string_Func_void_FFI = ffi.Pointer<Utf8> Function();
typedef voidstar_Func_int = ffi.Pointer<void> Function(int);
typedef voidstar_Func_ffi_Int32_FFI = ffi.Pointer<void> Function(ffi.Int32);
typedef bool_Func_voidstar_bool = int Function(ffi.Pointer<void>, int);
typedef bool_Func_voidstar_ffi_Int8_FFI = ffi.Int8 Function(
    ffi.Pointer<void>, ffi.Int8);
typedef int_Func_voidstar_bool = int Function(ffi.Pointer<void>, int);
typedef int_Func_voidstar_ffi_Int8_FFI = ffi.Int32 Function(
    ffi.Pointer<void>, ffi.Int8);
typedef void_Func_voidstar_int_int = void Function(ffi.Pointer<void>, int, int);
typedef void_Func_voidstar_ffi_Int32_ffi_Int32_FFI = ffi.Void Function(
    ffi.Pointer<void>, ffi.Int32, ffi.Int32);
typedef voidstar_Func_int_int = ffi.Pointer<void> Function(int, int);
typedef voidstar_Func_ffi_Int32_ffi_Int32_FFI = ffi.Pointer<void> Function(
    ffi.Int32, ffi.Int32);
typedef void_Func_voidstar_bool = void Function(ffi.Pointer<void>, int);
typedef void_Func_voidstar_ffi_Int8_FFI = ffi.Void Function(
    ffi.Pointer<void>, ffi.Int8);
typedef voidstar_Func_bool = ffi.Pointer<void> Function(int);
typedef voidstar_Func_ffi_Int8_FFI = ffi.Pointer<void> Function(ffi.Int8);
typedef voidstar_Func_string = ffi.Pointer<void> Function(ffi.Pointer<Utf8>);
typedef voidstar_Func_string_FFI = ffi.Pointer<void> Function(
    ffi.Pointer<Utf8>);
typedef voidstar_Func_double = ffi.Pointer<void> Function(double);
typedef voidstar_Func_ffi_Double_FFI = ffi.Pointer<void> Function(ffi.Double);
typedef bool_Func_voidstar_voidstar = int Function(
    ffi.Pointer<void>, ffi.Pointer<void>);
typedef bool_Func_voidstar_voidstar_FFI = ffi.Int8 Function(
    ffi.Pointer<void>, ffi.Pointer<void>);
typedef string_Func_voidstar = ffi.Pointer<Utf8> Function(ffi.Pointer<void>);
typedef string_Func_voidstar_FFI = ffi.Pointer<Utf8> Function(
    ffi.Pointer<void>);
typedef voidstar_Func_voidstar_string = ffi.Pointer<void> Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef voidstar_Func_voidstar_string_FFI = ffi.Pointer<void> Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef voidstar_Func_voidstar_voidstar_int = ffi.Pointer<void> Function(
    ffi.Pointer<void>, ffi.Pointer<void>, int);
typedef voidstar_Func_voidstar_voidstar_ffi_Int32_FFI = ffi.Pointer<void>
    Function(ffi.Pointer<void>, ffi.Pointer<void>, ffi.Int32);
typedef voidstar_Func_voidstar_int_int_int = ffi.Pointer<void> Function(
    ffi.Pointer<void>, int, int, int);
typedef voidstar_Func_voidstar_ffi_Int32_ffi_Int32_ffi_Int32_FFI
    = ffi.Pointer<void> Function(
        ffi.Pointer<void>, ffi.Int32, ffi.Int32, ffi.Int32);
typedef voidstar_Func_voidstar_int = ffi.Pointer<void> Function(
    ffi.Pointer<void>, int);
typedef voidstar_Func_voidstar_ffi_Int32_FFI = ffi.Pointer<void> Function(
    ffi.Pointer<void>, ffi.Int32);
typedef voidstar_Func_string_int = ffi.Pointer<void> Function(
    ffi.Pointer<Utf8>, int);
typedef voidstar_Func_string_ffi_Int32_FFI = ffi.Pointer<void> Function(
    ffi.Pointer<Utf8>, ffi.Int32);
typedef int_Func_voidstar_voidstar_int = int Function(
    ffi.Pointer<void>, ffi.Pointer<void>, int);
typedef int_Func_voidstar_voidstar_ffi_Int32_FFI = ffi.Int32 Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Int32);
typedef voidstar_Func_voidstar_int_voidstar = ffi.Pointer<void> Function(
    ffi.Pointer<void>, int, ffi.Pointer<void>);
typedef voidstar_Func_voidstar_ffi_Int32_voidstar_FFI = ffi.Pointer<void>
    Function(ffi.Pointer<void>, ffi.Int32, ffi.Pointer<void>);
typedef voidstar_Func_voidstar_int_string = ffi.Pointer<void> Function(
    ffi.Pointer<void>, int, ffi.Pointer<Utf8>);
typedef voidstar_Func_voidstar_ffi_Int32_string_FFI = ffi.Pointer<void>
    Function(ffi.Pointer<void>, ffi.Int32, ffi.Pointer<Utf8>);
typedef voidstar_Func_voidstar_int_int = ffi.Pointer<void> Function(
    ffi.Pointer<void>, int, int);
typedef voidstar_Func_voidstar_ffi_Int32_ffi_Int32_FFI = ffi.Pointer<void>
    Function(ffi.Pointer<void>, ffi.Int32, ffi.Int32);
typedef voidstar_Func_voidstar_voidstar_voidstar = ffi.Pointer<void> Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<void>);
typedef voidstar_Func_voidstar_voidstar_voidstar_FFI = ffi.Pointer<void>
    Function(ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<void>);
typedef voidstar_Func_voidstar_int_int_voidstar = ffi.Pointer<void> Function(
    ffi.Pointer<void>, int, int, ffi.Pointer<void>);
typedef voidstar_Func_voidstar_ffi_Int32_ffi_Int32_voidstar_FFI
    = ffi.Pointer<void> Function(
        ffi.Pointer<void>, ffi.Int32, ffi.Int32, ffi.Pointer<void>);
typedef voidstar_Func_voidstar_voidstar_int_int = ffi.Pointer<void> Function(
    ffi.Pointer<void>, ffi.Pointer<void>, int, int);
typedef voidstar_Func_voidstar_voidstar_ffi_Int32_ffi_Int32_FFI
    = ffi.Pointer<void> Function(
        ffi.Pointer<void>, ffi.Pointer<void>, ffi.Int32, ffi.Int32);
typedef bool_Func_voidstar_voidstar_string = int Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef bool_Func_voidstar_voidstar_string_FFI = ffi.Int8 Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef bool_Func_voidstar_string_voidstar_string = int Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>, ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef bool_Func_voidstar_string_voidstar_string_FFI = ffi.Int8 Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>, ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef bool_Func_voidstar_voidstar_voidstar = int Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<void>);
typedef bool_Func_voidstar_voidstar_voidstar_FFI = ffi.Int8 Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<void>);
typedef bool_Func_voidstar_string = int Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef bool_Func_voidstar_string_FFI = ffi.Int8 Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef int_Func_voidstar_string = int Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef int_Func_voidstar_string_FFI = ffi.Int32 Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>);
typedef bool_Func_voidstar_string_voidstar = int Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>, ffi.Pointer<void>);
typedef bool_Func_voidstar_string_voidstar_FFI = ffi.Int8 Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>, ffi.Pointer<void>);
typedef voidstar_Func_string_string_int = ffi.Pointer<void> Function(
    ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, int);
typedef voidstar_Func_string_string_ffi_Int32_FFI = ffi.Pointer<void> Function(
    ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, ffi.Int32);
typedef double_Func_voidstar_int = double Function(ffi.Pointer<void>, int);
typedef double_Func_voidstar_ffi_Int32_FFI = ffi.Double Function(
    ffi.Pointer<void>, ffi.Int32);
typedef double_Func_voidstar = double Function(ffi.Pointer<void>);
typedef double_Func_voidstar_FFI = ffi.Double Function(ffi.Pointer<void>);
typedef bool_Func_void = int Function();
typedef bool_Func_void_FFI = ffi.Int8 Function();
typedef void_Func_voidstar_voidstar_int = void Function(
    ffi.Pointer<void>, ffi.Pointer<void>, int);
typedef void_Func_voidstar_voidstar_ffi_Int32_FFI = ffi.Void Function(
    ffi.Pointer<void>, ffi.Pointer<void>, ffi.Int32);
typedef void_Func_bool = void Function(int);
typedef void_Func_ffi_Int8_FFI = ffi.Void Function(ffi.Int8);
typedef voidstar_Func_string_string_string_int = ffi.Pointer<void> Function(
    ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, int);
typedef voidstar_Func_string_string_string_ffi_Int32_FFI
    = ffi.Pointer<void> Function(
        ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, ffi.Int32);
typedef voidstar_Func_int_int_int_int_int = ffi.Pointer<void> Function(
    int, int, int, int, int);
typedef voidstar_Func_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_FFI
    = ffi.Pointer<void> Function(
        ffi.Int32, ffi.Int32, ffi.Int32, ffi.Int32, ffi.Int32);
typedef voidstar_Func_double_double_double_double_double = ffi.Pointer<void>
    Function(double, double, double, double, double);
typedef voidstar_Func_ffi_Double_ffi_Double_ffi_Double_ffi_Double_ffi_Double_FFI
    = ffi.Pointer<void> Function(
        ffi.Double, ffi.Double, ffi.Double, ffi.Double, ffi.Double);
typedef voidstar_Func_double_double_double_double = ffi.Pointer<void> Function(
    double, double, double, double);
typedef voidstar_Func_ffi_Double_ffi_Double_ffi_Double_ffi_Double_FFI
    = ffi.Pointer<void> Function(
        ffi.Double, ffi.Double, ffi.Double, ffi.Double);
typedef bool_Func_int_int_int_int = int Function(int, int, int, int);
typedef bool_Func_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_FFI = ffi.Int8
    Function(ffi.Int32, ffi.Int32, ffi.Int32, ffi.Int32);
typedef void_Func_voidstar_int_int_int_int_int = void Function(
    ffi.Pointer<void>, int, int, int, int, int);
typedef void_Func_voidstar_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_FFI
    = ffi.Void Function(ffi.Pointer<void>, ffi.Int32, ffi.Int32, ffi.Int32,
        ffi.Int32, ffi.Int32);
typedef void_Func_voidstar_double_double_double_double_double = void Function(
    ffi.Pointer<void>, double, double, double, double, double);
typedef void_Func_voidstar_ffi_Double_ffi_Double_ffi_Double_ffi_Double_ffi_Double_FFI
    = ffi.Void Function(ffi.Pointer<void>, ffi.Double, ffi.Double, ffi.Double,
        ffi.Double, ffi.Double);
typedef void_Func_voidstar_int_int_int_int = void Function(
    ffi.Pointer<void>, int, int, int, int);
typedef void_Func_voidstar_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_FFI
    = ffi.Void Function(
        ffi.Pointer<void>, ffi.Int32, ffi.Int32, ffi.Int32, ffi.Int32);
typedef void_Func_voidstar_double_double_double_double = void Function(
    ffi.Pointer<void>, double, double, double, double);
typedef void_Func_voidstar_ffi_Double_ffi_Double_ffi_Double_ffi_Double_FFI
    = ffi.Void Function(
        ffi.Pointer<void>, ffi.Double, ffi.Double, ffi.Double, ffi.Double);
typedef voidstar_Func_voidstar_string_int = ffi.Pointer<void> Function(
    ffi.Pointer<void>, ffi.Pointer<Utf8>, int);
typedef voidstar_Func_voidstar_string_ffi_Int32_FFI = ffi.Pointer<void>
    Function(ffi.Pointer<void>, ffi.Pointer<Utf8>, ffi.Int32);
typedef char_Func_voidstar_int = int Function(ffi.Pointer<void>, int);
typedef char_Func_voidstar_ffi_Int32_FFI = ffi.Int8 Function(
    ffi.Pointer<void>, ffi.Int32);
typedef voidstar_Func_voidstar_int_string_int = ffi.Pointer<void> Function(
    ffi.Pointer<void>, int, ffi.Pointer<Utf8>, int);
typedef voidstar_Func_voidstar_ffi_Int32_string_ffi_Int32_FFI
    = ffi.Pointer<void> Function(
        ffi.Pointer<void>, ffi.Int32, ffi.Pointer<Utf8>, ffi.Int32);
typedef voidstar_Func_voidstar_string_int_string_int = ffi.Pointer<void>
    Function(ffi.Pointer<void>, ffi.Pointer<Utf8>, int, ffi.Pointer<Utf8>, int);
typedef voidstar_Func_voidstar_string_ffi_Int32_string_ffi_Int32_FFI
    = ffi.Pointer<void> Function(ffi.Pointer<void>, ffi.Pointer<Utf8>,
        ffi.Int32, ffi.Pointer<Utf8>, ffi.Int32);
typedef voidstar_Func_voidstar_int_int_string_int = ffi.Pointer<void> Function(
    ffi.Pointer<void>, int, int, ffi.Pointer<Utf8>, int);
typedef voidstar_Func_voidstar_ffi_Int32_ffi_Int32_string_ffi_Int32_FFI
    = ffi.Pointer<void> Function(
        ffi.Pointer<void>, ffi.Int32, ffi.Int32, ffi.Pointer<Utf8>, ffi.Int32);
typedef int_Func_voidstar_double = int Function(ffi.Pointer<void>, double);
typedef int_Func_voidstar_ffi_Double_FFI = ffi.Int32 Function(
    ffi.Pointer<void>, ffi.Double);
