cmake_minimum_required(VERSION 3.10)

# Set the project name and language
project(ProjectOne CXX)

# Set the C++ standard to C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add the executable target and specify its source files
add_executable(project_one_app
    main.cpp
    aboutme.cpp
)

# Tell the compiler that our target needs to look for headers
# in the current source directory.
target_include_directories(project_one_app PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
