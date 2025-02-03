
add_executable(Spark)

target_sources(Spark PUBLIC
    include/spark/version.h
)

target_sources(Spark PUBLIC
    src/main.cpp
)

target_include_directories(Spark PUBLIC include)

enable_clang_tidy(Spark)

set_target_properties(Spark
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/dist/${CMAKE_BUILD_TYPE}/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/dist/${CMAKE_BUILD_TYPE}/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/dist/${CMAKE_BUILD_TYPE}/bin"
)
