# (c) Copyright 2019 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
############################################################

proc conv_hex_bin { s } {
    binary scan [binary format H* $s] B* x
    return $x
}

proc conv_bin_hex { s } {
    binary scan [binary format B4 $s] H1 x
    return $x
}

proc update_uuid_rom {uuid cell} {

    puts "\nINFO: Updaing UUID ROM with UUID: ${uuid}"
    puts "INFO: Updating UUID ROM cell: ${cell}\n"

    # validate UUID format
    if {![string is xdigit ${uuid}]} {

        puts "ERROR: UUID should be a 128 bit hex value"
        puts "    Found ${uuid}"
        puts "Aborting UUID update"
        return 1

    }

    # validate UUID length
    set uuid_length [string length ${uuid}]

    if {${uuid_length} != 32} {

        puts "ERROR: UUID should be 128 bits.  Found [expr 4 * ${uuid_length}] bits"
        puts "    ${uuid}"
        puts "Aborting UUID update"
        return 1

    }

    # validate cell name
    if {[get_cells -quiet ${cell}] eq ""} {

        puts "ERROR: Specified UUID cell does not exist in the design"
        puts "    ${cell}"
        puts "Aborting UUID update"
        return 1

    }

    # get path to base of the UUID memory element
    set filter "PRIMITIVE_TYPE == CLB.LUTRAM.RAM32X1S && PRIMITIVE_LEVEL == \"MACRO\" && NAME =~  ${cell}*0_0"
    set uuid_rom_cell_base [string trimright [get_cells -hierarchical -filter ${filter}] 0_]

    if {${uuid_rom_cell_base} eq ""} {

        puts "ERROR: Correct UUID ROM structure not detected.  Please check the CLB.LUTRAM.RAM32X1S memory elements exist in the implemented design"
        puts "Aborting UUID update"
        return 1

    }

    # split uuid into 4x32 bit hex strings
    set uuid_split_hex {}
    for {set i 0} {$i < 4} {incr i} {
        lappend uuid_split_hex [string range ${uuid} [expr 8 * ${i}] [expr (8 * ${i}) + 7 ]]
    }


    # convert to 4x32 bit binary strings
    set uuid_split_bin {}
    foreach uuid_split_hex_item ${uuid_split_hex} {

        lappend uuid_split_bin [conv_hex_bin ${uuid_split_hex_item}]

    }

    # produce the muxed 32x4 bit binary string from the input 4x32 bit string
    set uuid_muxed_bin {}
    for {set j 0} {$j < 32} {incr j} {

        set temp ""
        for {set k 0} {$k < 4} {incr k} {

            append temp [string index [lindex ${uuid_split_bin} $k] [expr 31 - $j]]

        }
        lappend uuid_muxed_bin ${temp}
    }

    # convert to 32x4 bit hex strings
    set uuid_muxed_hex {}
    foreach uuid_muxed_bin_item ${uuid_muxed_bin} {

        lappend uuid_muxed_hex [conv_bin_hex ${uuid_muxed_bin_item}]

    }

    #puts "DEBUG: UUID length (chars): ${uuid_length}"
    #puts "DEBUG: UUID split (hex): ${uuid_split_hex}"
    #puts "DEBUG: UUID split (bin): ${uuid_split_bin}"
    #puts "DEBUG: UUID muxed (bin): ${uuid_muxed_bin}"
    #puts "DEBUG: UUID muxed (hex): ${uuid_muxed_hex}"
    #puts "DEBUG: UUID cell base: ${uuid_rom_cell_base}"

    # update INIT properties on the UUID ROM sub-memories
    set m 0
    foreach uuid_muxed_hex_item ${uuid_muxed_hex} {

        set uuid_rom_sub_cell [get_cells ${uuid_rom_cell_base}_${m}_${m}]
        if {${uuid_rom_sub_cell} eq ""} {

            puts "ERROR: UUID ROM sub-cell not found.  Please check it exists in the implemented design"
            puts "    ${uuid_rom_cell_base}_${m}_${m}"
            puts "Aborting UUID update"
            return 1

        }

        puts "INFO: Setting INIT=000000${uuid_muxed_hex_item} on cell ${uuid_rom_sub_cell}"
        set_property INIT 32'h00000000${uuid_muxed_hex_item} ${uuid_rom_sub_cell}
        incr m

    }
    puts "\nINFO: UUID ROM successfully updated\n"
    return 0

}

proc read_uuid_rom {cell} {

  puts "\nINFO: Reading UUID ROM cell: ${cell}\n"

  # validate cell name
  if {[get_cells -quiet ${cell}] eq ""} {

      puts "ERROR: Specified UUID cell does not exist in the design"
      puts "    ${cell}"
      puts "Aborting UUID read"
      return -code error "ERROR: Specified UUID cell does not exist in the design"

  }

  # get path to base of the UUID memory element
  set filter "PRIMITIVE_TYPE == CLB.LUTRAM.RAM32X1S && PRIMITIVE_LEVEL == \"MACRO\" && NAME =~  ${cell}*0_0"
  set uuid_rom_cell_base [string trimright [get_cells -hierarchical -filter ${filter}] 0_]

  if {${uuid_rom_cell_base} eq ""} {

      puts "ERROR: Correct UUID ROM structure not detected.  Please check the CLB.LUTRAM.RAM32X1S memory elements exist in the implemented design"
      puts "Aborting UUID read"
      return -code error "ERROR: Correct UUID ROM structure not detected.  Please check the CLB.LUTRAM.RAM32X1S memory elements exist in the implemented design"

  }

  # read INIT properties from the UUID ROM sub-memories
  for {set i 0} {$i < 32} {incr i} {

    set uuid_rom_sub_cell [get_cells ${uuid_rom_cell_base}_${i}_${i}]
    if {${uuid_rom_sub_cell} eq ""} {

        puts "ERROR: UUID ROM sub-cell not found.  Please check it exists in the implemented design"
        puts "    ${uuid_rom_cell_base}_${i}_${i}"
        puts "Aborting UUID read"
        return -code error "ERROR: UUID ROM sub-cell not found.  Please check it exists in the implemented design"

    }

    set sub_cell_init [get_property INIT ${uuid_rom_sub_cell}]
    puts "INFO: Read INIT=${sub_cell_init} on cell ${uuid_rom_sub_cell}"
    lappend uuid_inits $sub_cell_init

  }

  # construct the binary representation of each dword
  for {set i 0} {$i < 32} {incr i} {

    set hex_per_bit [string range [lindex $uuid_inits $i] 10 11]
    set bin_per_bit [conv_hex_bin $hex_per_bit]

    lappend dw0 [string index $bin_per_bit 7]
    lappend dw1 [string index $bin_per_bit 6]
    lappend dw2 [string index $bin_per_bit 5]
    lappend dw3 [string index $bin_per_bit 4]

  }

  lappend bin_dwords $dw3 $dw2 $dw1 $dw0

  # construct the hex representation of each dword - bit slice and rotate
  foreach dword $bin_dwords {
    set dw_hex ""
    for {set i 7} {$i >= 0} {incr i -1} {
      set nibble ""
      for {set j 3} {$j >= 0} {incr j -1} {
        append nibble [lindex $dword [expr $i * 4 + $j]]
      }
      append dw_hex [conv_bin_hex $nibble]
    }
    lappend hex_dwords $dw_hex
  }

  # construct the final hex representation of the full UUID
  set uuid ""
  foreach dword $hex_dwords {
    append uuid $dword
  }

  puts "\nINFO: Read UUID ROM value: ${uuid}\n"

  return $uuid

}
