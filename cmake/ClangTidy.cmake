
function(enable_clang_tidy PROJECT)
    if(CLANG_TIDY_EXE)
        set(CLANG_TIDY_COMMAND "${CLANG_TIDY_EXE}" "--config-file=${CMAKE_SOURCE_DIR}/.clang-tidy")
        message(STATUS "clang-tidy found: ${CLANG_TIDY_EXE}")
    else()
        message(WARNING "clang-tidy not found.")
    endif()


    if(CLANG_TIDY_EXE)
        set_target_properties(${PROJECT} PROPERTIES CXX_CLANG_TIDY "${CLANG_TIDY_COMMAND}")
    endif() 
endfunction(enable_clang_tidy PROJECT)

