# ---------------------------------------------------------------------------------------
# fmt settings
# ---------------------------------------------------------------------------------------

set(FMT_INSTALL OFF)            # Disable install target

set(FMT_TEST OFF)               # Disable testing
set(FMT_FUZZ OFF)

set(FMT_DOC OFF)                # Disable documentation

set(FMT_OS ON)                  # Build with OS-specific APIs

set(FMT_SYSTEM_HEADERS ON)      # Use system headers for fmt


# ---------------------------------------------------------------------------------------
# spdlog settings
# ---------------------------------------------------------------------------------------

set(SPDLOG_NO_EXCEPTIONS OFF)           # Disable exceptions

set(SPDLOG_INSTALL OFF)                 # Disable install target

set(SPDLOG_FMT_EXTERNAL OFF)            # Use external fmt library in spdlog project
set(SPDLOG_FMT_EXTERNAL_HO ON)

set(SPDLOG_ENABLE_PCH ON)               # Enable pre-compiled headers in spdlog project

set(SPDLOG_BUILD_PIC ON)                # Build spdlog project with position-independent code

set(SPDLOG_SYSTEM_INCLUDES ON)          # Use system includes in spdlog project

set(SPDLOG_BUILD_EXAMPLES OFF)          # Do not build examples in spdlog project
set(SPDLOG_BUILD_EXAMPLE_HO OFF)

set(SPDLOG_BUILD_TESTS OFF)             # Do not build tests in spdlog project
set(SPDLOG_BUILD_TESTS_HO OFF)

set(SPDLOG_BUILD_SHARED OFF)            # Do not build spdlog project as shared library

set(SPDLOG_NO_THREAD_ID ON)             # Disable obtaining thread ID when calling logging method

set(SPDLOG_DISABLE_DEFAULT_LOGGER OFF)   # Disable creation default logger
