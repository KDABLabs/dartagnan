# This file is part of Dartagnan.
#
# SPDX-FileCopyrightText: 2024 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.10)

project(Animal LANGUAGES CXX)

set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(CMAKE_VISIBILITY_INLINES_HIDDEN 1)

set(SOURCES
    animal.cpp

    # For the sake of simplicity, we also add the generated binding glue here
    # Otherwise you'd need to build ./generated/AnimalBindings/CMakeLists.txt and get
    # a 2nd C++ library.
    generated/AnimalBindings/dart/ffi/Animal_c.cpp
)


# The Animal lib is the client C++ library, which we'll generate bindings for
add_library(Animal SHARED ${SOURCES})
include(GenerateExportHeader)
generate_export_header(Animal)

set_property(TARGET Animal PROPERTY CXX_STANDARD 14)

target_include_directories(Animal
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/>
)
