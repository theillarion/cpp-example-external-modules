cmake_minimum_required(VERSION 3.10.2)

project(superbuild)

include(${CMAKE_SOURCE_DIR}/cmake/ModulesSettings.cmake)
include(${CMAKE_SOURCE_DIR}/cmake/ImportModule.cmake)

ImportModule(fmt "https://github.com/fmtlib/fmt" "11.2.0" fmt::fmt-header-only)
ImportModule(spdlog "https://github.com/gabime/spdlog" "v1.15.3" spdlog::spdlog_header_only)

add_subdirectory(main)