# This file is part of Dartagnan.
#
# SPDX-FileCopyrightText: 2023 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
# SPDX-License-Identifier: MIT

 ../build-dev/3rdparty/shiboken/sources/shiboken6/generator/shiboken6 \
 --license-file=license_template \
 --output-directory=generated \
 --generator-set=dart --skip-deprecated --clang-option=-DDARTAGNAN_BINDINGS_RUN bindings_global.h typesystem.xml && \
 clang-format -i ./generated/AnimalBindings/dart/ffi/Animal_c.cpp ./generated/AnimalBindings/dart/ffi/Animal_c.h

