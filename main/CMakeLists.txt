cmake_minimum_required(VERSION 3.10.2)
project(main)

set(sources ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp)

add_executable(${PROJECT_NAME} ${sources})
target_link_libraries(${PROJECT_NAME} PRIVATE fmt::fmt-header-only spdlog::spdlog_header_only stdc++)