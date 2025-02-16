file(REMOVE_RECURSE
  "dsPIC33a_test_default_default.elf"
  "dsPIC33a_test_default_default.elf.manifest"
  "dsPIC33a_test_default_default.elf.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/dsPIC33a_test_default_default.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
