/// This file is part of Dartagnan.
///
/// SPDX-FileCopyrightText: 2024 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
/// SPDX-License-Identifier: MIT
#include "animal_export.h"
#include <animal.h>

namespace AnimalBindings_wrappersNS {
class Animal_wrapper : public ::Animal
{
public:
    ~Animal_wrapper();
    Animal_wrapper();
    virtual void closeMouth();
    virtual void closeMouth_nocallback();
    void eat();
    virtual void openMouth();
    virtual void openMouth_nocallback();
    typedef void (*Callback_closeMouth)(void *);
    Callback_closeMouth m_closeMouthCallback = nullptr;
    typedef void (*Callback_openMouth)(void *);
    Callback_openMouth m_openMouthCallback = nullptr;
};
}
extern "C" {
// Animal::Animal()
ANIMAL_EXPORT void *c_Animal__constructor();
// Animal::closeMouth()
ANIMAL_EXPORT void c_Animal__closeMouth(void *thisObj);
// Animal::eat()
ANIMAL_EXPORT void c_Animal__eat(void *thisObj);
// Animal::openMouth()
ANIMAL_EXPORT void c_Animal__openMouth(void *thisObj);
ANIMAL_EXPORT void c_Animal__destructor(void *thisObj);
ANIMAL_EXPORT void c_Animal__registerVirtualMethodCallback(void *ptr, void *callback, int methodId);
ANIMAL_EXPORT void c_Animal_Finalizer(void *cppObj);
}
