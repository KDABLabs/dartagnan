/// This file is part of Dartagnan.
///
/// SPDX-FileCopyrightText: 2024 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
/// SPDX-License-Identifier: MIT

#include "animal.h"

#include <iostream>

void Animal::eat()
{
    std::cout << "eat from C++\n";
    openMouth();
    closeMouth();
}

void Animal::openMouth()
{
    std::cout << "openMouth from C++\n";
}

void Animal::closeMouth()
{
    std::cout << "closeMouth from C++\n";
}
