include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(dsPIC33a_test_default_library_list )

# Handle files with suffix s, for group default-XC-DSC
if(dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_assemble)
add_library(dsPIC33a_test_default_default_XC_DSC_assemble OBJECT ${dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_assemble})
    dsPIC33a_test_default_default_XC_DSC_assemble_rule(dsPIC33a_test_default_default_XC_DSC_assemble)
    list(APPEND dsPIC33a_test_default_library_list "$<TARGET_OBJECTS:dsPIC33a_test_default_default_XC_DSC_assemble>")
endif()

# Handle files with suffix S, for group default-XC-DSC
if(dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_assemblePreproc)
add_library(dsPIC33a_test_default_default_XC_DSC_assemblePreproc OBJECT ${dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_assemblePreproc})
    dsPIC33a_test_default_default_XC_DSC_assemblePreproc_rule(dsPIC33a_test_default_default_XC_DSC_assemblePreproc)
    list(APPEND dsPIC33a_test_default_library_list "$<TARGET_OBJECTS:dsPIC33a_test_default_default_XC_DSC_assemblePreproc>")
endif()

# Handle files with suffix c, for group default-XC-DSC
if(dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_compile)
add_library(dsPIC33a_test_default_default_XC_DSC_compile OBJECT ${dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_compile})
    dsPIC33a_test_default_default_XC_DSC_compile_rule(dsPIC33a_test_default_default_XC_DSC_compile)
    list(APPEND dsPIC33a_test_default_library_list "$<TARGET_OBJECTS:dsPIC33a_test_default_default_XC_DSC_compile>")
endif()

add_executable(${dsPIC33a_test_default_image_name} ${dsPIC33a_test_default_library_list})

target_link_libraries(${dsPIC33a_test_default_image_name} PRIVATE ${dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_link})

# Add the link options from the rule file.
dsPIC33a_test_default_link_rule(${dsPIC33a_test_default_image_name})

# Add bin2hex target for converting built file to a .hex file.
add_custom_target(dsPIC33a_test_default_Bin2Hex ALL
    ${MP_BIN2HEX} ${dsPIC33a_test_default_image_name})
add_dependencies(dsPIC33a_test_default_Bin2Hex ${dsPIC33a_test_default_image_name})

# Post build target to copy built file to the output directory.
add_custom_command(TARGET ${dsPIC33a_test_default_image_name} POST_BUILD
                    COMMAND ${CMAKE_COMMAND} -E make_directory ${dsPIC33a_test_default_output_dir}
                    COMMAND ${CMAKE_COMMAND} -E copy ${dsPIC33a_test_default_image_name} ${dsPIC33a_test_default_output_dir}/${dsPIC33a_test_default_original_image_name}
                    BYPRODUCTS ${dsPIC33a_test_default_output_dir}/${dsPIC33a_test_default_original_image_name})
