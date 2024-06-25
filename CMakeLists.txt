cmake_minimum_required(VERSION 3.25)
project(Rooster·LANGUAGES CXX)

Set(CMAKE CXX STANDARD·23)
Set(CMAKE CXX STANDARD REOUIRED ON)

include(Fectchcontent)
FetchContent_Declare(
fmt
GIT_REPOSITORY https://github.com/fmtlib/fmt.git
GIT TAG 10.1.1
)
FectchContent_MakeAvailable(fmt)

add_executable(rooster main.cpp)
target_link_libraries(rooster PRIVATE fmt::fmt)