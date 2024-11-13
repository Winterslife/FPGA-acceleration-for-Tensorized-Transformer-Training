# This file was automatically generated by Vpl
if { ![info exists _is_init_cmds] } {
  set script_old $::optrace::script
  set category_old $::optrace::category
  source ../../../ipirun.tcl
  variable ::optrace::script $script_old
  variable ::optrace::category $category_old
  source $local_dir/debug_profile_hooks.tcl
  namespace import ocl_util::*

set VPL_ERROR_LOGGED 707
  set _is_init_cmds true
}



# run timing analysis and frequency scaling
if { ![report_timing_and_scale_freq "level0_i/level1/level1_i/ulp" "dr" $vivado_output_dir $vpl_output_dir "kernel_clock_freqs {ss_ucs/aclk_kernel_00 {is_user_set false instance ss_ucs port aclk_kernel_00 clk_id 0 freq 300.000000} ss_ucs/aclk_kernel_01 {is_user_set false instance ss_ucs port aclk_kernel_01 clk_id 1 freq 500.000000}} system_clock_freqs {} worst_negative_slack 0 max_frequency 650 min_frequency 10 error_on_hold_violation true error_on_pw_violation true skip_timing_and_scaling false enable_auto_freq_scale true" "MatrixMultiplication_hw"] } {
  return false
}
