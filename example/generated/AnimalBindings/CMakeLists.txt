cmake_minimum_required(VERSION 3.10)

project(AnimalBindings LANGUAGES CXX)

set(SOURCES
    dart/ffi/Animal_c.cpp
)

set(CMAKE_CXX_VISIBILITY_PRESET hidden)

find_package(Qt6Widgets)

add_library(AnimalBindings SHARED ${SOURCES})

include(GenerateExportHeader)
generate_export_header(AnimalBindings EXPORT_FILE_NAME "${CMAKE_CURRENT_BINARY_DIR}/animal_export.h" EXPORT_MACRO_NAME ANIMAL_EXPORT)
set_property(TARGET AnimalBindings PROPERTY CXX_STANDARD 14)

target_link_libraries(AnimalBindings  Qt6::Core Qt6::Widgets)
target_include_directories(AnimalBindings PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/cpp/include>  $<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}>
$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>)

