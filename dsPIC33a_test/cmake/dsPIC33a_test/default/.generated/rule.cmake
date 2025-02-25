# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "C:/Users/Carvalhaes/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(dsPIC33a_test_default_default_XC_DSC_assemble_rule target)
    set(options
        "-g"
        "-mcpu=33AK128MC106"
        "-Wa,--defsym=__MPLAB_BUILD=1,--no-relax"
        "-mdfp=${PACK_REPO_PATH}/Microchip/dsPIC33AK-MC_DFP/1.0.33/xc16")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "XPRJ_default=default")
endfunction()
function(dsPIC33a_test_default_default_XC_DSC_assemblePreproc_rule target)
    set(options
        "-x"
        "assembler-with-cpp"
        "-g"
        "-mcpu=33AK128MC106"
        "-Wa,--defsym=__MPLAB_BUILD=1,--no-relax"
        "-mdfp=${PACK_REPO_PATH}/Microchip/dsPIC33AK-MC_DFP/1.0.33/xc16")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "XPRJ_default=default")
endfunction()
function(dsPIC33a_test_default_default_XC_DSC_compile_rule target)
    set(options
        "-g"
        "-mcpu=33AK128MC106"
        "-O0"
        "-msmart-io=1"
        "-Wall"
        "-msfr-warn=off"
        "-mdfp=${PACK_REPO_PATH}/Microchip/dsPIC33AK-MC_DFP/1.0.33/xc16")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "XPRJ_default=default")
endfunction()
function(dsPIC33a_test_default_link_rule target)
    set(options
        "-g"
        "-mcpu=33AK128MC106"
        "-Wl,--script=p33AK128MC106.gld,--local-stack,--defsym=__MPLAB_BUILD=1,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem,--memorysummary,memoryfile.xml"
        "-mdfp=${PACK_REPO_PATH}/Microchip/dsPIC33AK-MC_DFP/1.0.33/xc16")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "XPRJ_default=default")
endfunction()
