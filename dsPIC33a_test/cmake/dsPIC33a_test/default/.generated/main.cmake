include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")
set(dsPIC33a_test_default_library_list )
# Handle files with suffix s 
if(dsPIC33a_test_default_FILE_GROUP_assemble)
    add_library(dsPIC33a_test_default_assemble OBJECT ${dsPIC33a_test_default_FILE_GROUP_assemble})
    dsPIC33a_test_default_assemble_rule(dsPIC33a_test_default_assemble)
    list(APPEND dsPIC33a_test_default_library_list "$<TARGET_OBJECTS:dsPIC33a_test_default_assemble>")
endif()

# Handle files with suffix S 
if(dsPIC33a_test_default_FILE_GROUP_assemblePreproc)
    add_library(dsPIC33a_test_default_assemblePreproc OBJECT ${dsPIC33a_test_default_FILE_GROUP_assemblePreproc})
    dsPIC33a_test_default_assemblePreproc_rule(dsPIC33a_test_default_assemblePreproc)
    list(APPEND dsPIC33a_test_default_library_list "$<TARGET_OBJECTS:dsPIC33a_test_default_assemblePreproc>")
endif()

# Handle files with suffix c 
if(dsPIC33a_test_default_FILE_GROUP_compile)
    add_library(dsPIC33a_test_default_compile OBJECT ${dsPIC33a_test_default_FILE_GROUP_compile})
    dsPIC33a_test_default_compile_rule(dsPIC33a_test_default_compile)
    list(APPEND dsPIC33a_test_default_library_list "$<TARGET_OBJECTS:dsPIC33a_test_default_compile>")
endif()

if (BUILD_LIBRARY)
        message(STATUS "Building LIBRARY")
        add_library(${dsPIC33a_test_default_image_name} ${dsPIC33a_test_default_library_list})
        foreach(lib ${dsPIC33a_test_default_FILE_GROUP_link})
        target_link_libraries(${dsPIC33a_test_default_image_name} PRIVATE ${CMAKE_CURRENT_LIST_DIR} /${lib})
        endforeach()
        add_custom_command(
            TARGET ${dsPIC33a_test_default_image_name}
    COMMAND ${CMAKE_COMMAND} -E make_directory ${dsPIC33a_test_default_output_dir}
    COMMAND ${CMAKE_COMMAND} -E copy lib${dsPIC33a_test_default_image_name}.a ${dsPIC33a_test_default_output_dir}/${dsPIC33a_test_default_original_image_name})
else()
    message(STATUS "Building STANDARD")
    add_executable(${dsPIC33a_test_default_image_name} ${dsPIC33a_test_default_library_list})
    foreach(lib ${dsPIC33a_test_default_FILE_GROUP_link})
    target_link_libraries(${dsPIC33a_test_default_image_name} PRIVATE ${CMAKE_CURRENT_LIST_DIR}/${lib})
endforeach()
    dsPIC33a_test_default_link_rule(${dsPIC33a_test_default_image_name})
        add_custom_target(
        dsPIC33a_test_default_Bin2Hex
        ALL
        ${MP_BIN2HEX} ${dsPIC33a_test_default_image_name}
    )
    add_dependencies(dsPIC33a_test_default_Bin2Hex ${dsPIC33a_test_default_image_name})

add_custom_command(
    TARGET ${dsPIC33a_test_default_image_name}
    COMMAND ${CMAKE_COMMAND} -E make_directory ${dsPIC33a_test_default_output_dir}
    COMMAND ${CMAKE_COMMAND} -E copy ${dsPIC33a_test_default_image_name} ${dsPIC33a_test_default_output_dir}/${dsPIC33a_test_default_original_image_name})
endif()
