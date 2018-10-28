INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_MYMODULE mymodule)

FIND_PATH(
    MYMODULE_INCLUDE_DIRS
    NAMES mymodule/api.h
    HINTS $ENV{MYMODULE_DIR}/include
        ${PC_MYMODULE_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    MYMODULE_LIBRARIES
    NAMES gnuradio-mymodule
    HINTS $ENV{MYMODULE_DIR}/lib
        ${PC_MYMODULE_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(MYMODULE DEFAULT_MSG MYMODULE_LIBRARIES MYMODULE_INCLUDE_DIRS)
MARK_AS_ADVANCED(MYMODULE_LIBRARIES MYMODULE_INCLUDE_DIRS)

