/// This file is part of Dartagnan.
///
/// SPDX-FileCopyrightText: 2024 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
/// SPDX-License-Identifier: MIT
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
// tag=1053

typedef void_Func_voidstar = void Function(ffi.Pointer<void>);
typedef void_Func_voidstar_FFI = ffi.Void Function(ffi.Pointer<void>);
typedef RegisterMethodIsReimplementedCallback = void Function(ffi.Pointer<void>, ffi.Pointer<void>, int);
typedef RegisterMethodIsReimplementedCallback_FFI = ffi.Void Function(ffi.Pointer<void>, ffi.Pointer<void>, ffi.Int32);
typedef SignalHandler = void Function(ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<void>);
typedef SignalHandler_FFI = ffi.Void Function(ffi.Pointer<void>, ffi.Pointer<void>, ffi.Pointer<void>);
typedef voidstar_Func_void = ffi.Pointer<void> Function();
typedef voidstar_Func_void_FFI = ffi.Pointer<void> Function();