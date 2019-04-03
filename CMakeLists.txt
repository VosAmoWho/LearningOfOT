cmake_minimum_required(VERSION 3.0)
project(emp-ot)
set(NAME "emp-ot")
set(CMAKE_CXX_STANDARD 11)

find_path(CMAKE_FOLDER NAMES cmake/emp-tool-config.cmake)
include(${CMAKE_FOLDER}/cmake/common.cmake)
include(${CMAKE_FOLDER}/cmake/source_of_randomness.cmake)
include(${CMAKE_FOLDER}/cmake/threading.cmake)

find_package(emp-tool REQUIRED)
# Requirements for lattice

if (LATTICEOT)
    message(STATUS "Building with support for lattice OT")
    find_package(Eigen3 3.3 REQUIRED NO_MODULE)
    find_package(Boost 1.58 REQUIRED COMPONENTS random)
    include_directories(${EMP-TOOL_INCLUDE_DIRS} ${EIGEN3_INCLUDE_DIR} ${Boost_INCLUDE_DIRS})
else (LATTICEOT)
    include_directories(${EMP-TOOL_INCLUDE_DIRS} ${Boost_INCLUDE_DIRS})
endif (LATTICEOT)


# Installation
install(FILES cmake/emp-ot-config.cmake DESTINATION cmake/)
install(DIRECTORY emp-ot DESTINATION include/)

configure_file(${CMAKE_SOURCE_DIR}/emp-ot/latticeInclude.h.in ${CMAKE_SOURCE_DIR}/emp-ot/latticeInclude.h @ONLY)

ADD_EXECUTABLE(ot-client ${PROJECT_SOURCE_DIR}/src/main.cpp)
target_link_libraries(ot-client ${EMP-TOOL_LIBRARIES})