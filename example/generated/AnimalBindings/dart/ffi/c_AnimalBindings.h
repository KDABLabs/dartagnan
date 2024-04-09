/// This file is part of Dartagnan.
///
/// SPDX-FileCopyrightText: 2024 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
/// SPDX-License-Identifier: MIT
#include <stdbool.h>

// Animal::Animal()
void * c_Animal__constructor();
// Animal::closeMouth()
void c_Animal__closeMouth(void *thisObj);
// Animal::eat()
void c_Animal__eat(void *thisObj);
// Animal::openMouth()
void c_Animal__openMouth(void *thisObj);
void c_Animal__destructor(void *thisObj);
void c_Animal__registerVirtualMethodCallback(void *ptr, void *callback, int methodId); void c_Animal_Finalizer(void *cppObj);