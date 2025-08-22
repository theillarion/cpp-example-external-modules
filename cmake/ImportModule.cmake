# Fetch dependencies
include(FetchContent)

# Force dependency packaging format (for submodules)
set(PKG_FORCE_PACKAGING_CONVENTION ON CACHE INTERNAL "")

set(FETCHCONTENT_BASE_DIR ${CMAKE_SOURCE_DIR}/build/external_modules)
# set(FETCHCONTENT_QUIET OFF)

function(ImportModule MODULE_NAME URL TAG CHECK_TARGET)
    if ((NOT "${CHECK_TARGET}" STREQUAL "") AND TARGET ${CHECK_TARGET})
        return() # Don't import if already added in the project
    endif()

    set(MODULE_SOURCE_DIR ${FETCHCONTENT_BASE_DIR}/${MODULE_NAME}-src)
    set(MODULE_BUILD_DIR ${CMAKE_BINARY_DIR}/modules/${MODULE_NAME})

    FetchContent_Declare(
        ${MODULE_NAME}
        GIT_REPOSITORY ${URL}
        GIT_TAG        ${TAG}                   # Branch
        ${EXCLUDE_FROM_ALL_FLAG}
        SOURCE_DIR ${MODULE_SOURCE_DIR}         # Source
        BINARY_DIR ${MODULE_BUILD_DIR}          # Build
    )

    FetchContent_MakeAvailable(${MODULE_NAME})

    set(${MODULE_NAME}_DIR ${MODULE_BUILD_DIR} PARENT_SCOPE)
endfunction()