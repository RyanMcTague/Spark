enable_testing()

add_executable(Spark)
add_executable(SparkTests)

target_sources(Spark PUBLIC
        include/spark/version.h
        include/spark/core/application.h
)

target_sources(Spark PUBLIC
        src/main.cpp
        src/core/application.cpp
)

target_sources(SparkTests PRIVATE
        tests/main.cpp
)

target_include_directories(Spark PUBLIC include)
target_include_directories(SparkTests PUBLIC include)

target_link_libraries(SparkTests PRIVATE GTest::gtest_main)

enable_clang_tidy(Spark)

gtest_discover_tests(SparkTests)

set_target_properties(Spark
        PROPERTIES
            ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/dist/${CMAKE_BUILD_TYPE}/lib"
            LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/dist/${CMAKE_BUILD_TYPE}/lib"
            RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/dist/${CMAKE_BUILD_TYPE}/bin"
)
