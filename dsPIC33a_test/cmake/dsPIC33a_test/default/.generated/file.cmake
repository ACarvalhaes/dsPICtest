# The following variables contains the files used by the different stages of the build process.
set(dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_assemble)
set(dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_assemblePreproc)
set_source_files_properties(${dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_assemblePreproc} PROPERTIES LANGUAGE C)
set(dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_compile "${CMAKE_CURRENT_SOURCE_DIR}/../../../main.c")
set(dsPIC33a_test_default_default_XC_DSC_FILE_TYPE_link)

# The (internal) path to the resulting build image.
set(dsPIC33a_test_default_internal_image_name "${CMAKE_CURRENT_SOURCE_DIR}/../../../_build/dsPIC33a_test/default/default.elf")

# The name of the resulting image, including namespace for configuration.
set(dsPIC33a_test_default_image_name "dsPIC33a_test_default_default.elf")

# The name of the image, excluding the namespace for configuration.
set(dsPIC33a_test_default_original_image_name "default.elf")

# The output directory of the final image.
set(dsPIC33a_test_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/dsPIC33a_test")
