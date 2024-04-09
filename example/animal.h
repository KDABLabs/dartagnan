/// This file is part of Dartagnan.
///
/// SPDX-FileCopyrightText: 2024 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
/// SPDX-License-Identifier: MIT

#pragma once

#include "animal_export.h"

class ANIMAL_EXPORT Animal
{
public:
    // non-virtual! for example purposes
    void eat();

protected:
    virtual void openMouth();
    virtual void closeMouth();
};
