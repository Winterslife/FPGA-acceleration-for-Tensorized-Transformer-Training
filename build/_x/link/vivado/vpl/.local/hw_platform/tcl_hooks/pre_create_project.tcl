# Set necessary params
set_param bd.skipSupportedIPCheck true

# Set HIP SLR automation level
set __sdx_hip_slr_automation_level 2
if {[info exists ::env(SDX_HIP_SLR_AUTOMATION_LEVEL)]} {
  set __sdx_hip_slr_automation_level $::env(SDX_HIP_SLR_AUTOMATION_LEVEL)
}
set_param ips.enableSLRParameter $__sdx_hip_slr_automation_level


# WORKAROUND for 2020.2 tools issue CR-1076163
set_param route.sllAssign.enableILPBasedSllAssignment false
