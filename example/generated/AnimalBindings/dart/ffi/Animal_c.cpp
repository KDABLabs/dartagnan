/// This file is part of Dartagnan.
///
/// SPDX-FileCopyrightText: 2024 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
/// SPDX-License-Identifier: MIT
#include "Animal_c.h"


#include <iostream>

#include <cassert>


namespace Dartagnan {

typedef int (*CleanupCallback)(void *thisPtr);
static CleanupCallback s_cleanupCallback = nullptr;

template<typename T>
struct ValueWrapper
{
    T value;
};

}
namespace AnimalBindings_wrappersNS {
Animal_wrapper::Animal_wrapper()
    : ::Animal()
{
}
void Animal_wrapper::closeMouth()
{
    if (m_closeMouthCallback) {
        const void *thisPtr = this;
        m_closeMouthCallback(const_cast<void *>(thisPtr));
    } else {
        ::Animal::closeMouth();
    }
}
void Animal_wrapper::closeMouth_nocallback()
{
    ::Animal::closeMouth();
}
void Animal_wrapper::eat()
{
    ::Animal::eat();
}
void Animal_wrapper::openMouth()
{
    if (m_openMouthCallback) {
        const void *thisPtr = this;
        m_openMouthCallback(const_cast<void *>(thisPtr));
    } else {
        ::Animal::openMouth();
    }
}
void Animal_wrapper::openMouth_nocallback()
{
    ::Animal::openMouth();
}
Animal_wrapper::~Animal_wrapper()
{
}

}
static Animal *fromPtr(void *ptr)
{
    return reinterpret_cast<Animal *>(ptr);
}
static AnimalBindings_wrappersNS::Animal_wrapper *fromWrapperPtr(void *ptr)
{
    return reinterpret_cast<AnimalBindings_wrappersNS::Animal_wrapper *>(ptr);
}
extern "C" {
void c_Animal_Finalizer(void *cppObj)
{
    delete reinterpret_cast<AnimalBindings_wrappersNS::Animal_wrapper *>(cppObj);
}
void *c_Animal__constructor()
{
    auto ptr = new AnimalBindings_wrappersNS::Animal_wrapper();
    return reinterpret_cast<void *>(ptr);
}
// closeMouth()
void c_Animal__closeMouth(void *thisObj)
{
    fromWrapperPtr(thisObj)->closeMouth_nocallback();
}
// eat()
void c_Animal__eat(void *thisObj)
{
    fromPtr(thisObj)->eat();
}
// openMouth()
void c_Animal__openMouth(void *thisObj)
{
    fromWrapperPtr(thisObj)->openMouth_nocallback();
}
void c_Animal__destructor(void *thisObj)
{
    delete fromPtr(thisObj);
}
void c_Animal__registerVirtualMethodCallback(void *ptr, void *callback, int methodId)
{
    auto wrapper = fromWrapperPtr(ptr);
    switch (methodId) {
    case 1:
        wrapper->m_closeMouthCallback =
            reinterpret_cast<AnimalBindings_wrappersNS::Animal_wrapper::Callback_closeMouth>(
                callback);
        break;
    case 3:
        wrapper->m_openMouthCallback =
            reinterpret_cast<AnimalBindings_wrappersNS::Animal_wrapper::Callback_openMouth>(
                callback);
        break;
    }
}
}
