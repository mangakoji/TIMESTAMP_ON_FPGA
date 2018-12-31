# TIMESTAMP.tcl
# timestamp getter for verilog
# 
# this tcl script make verilog parameter C_TIMESTAMP
#  value is ctime(unix time) of compile timinig
# 
# usage :
# discription for Quarts
# 1) if you use Qurtus, you write append last line in *.qsf
# set_global_assignment -name PRE_FLOW_SCRIPT_FILE "quartus_sh:./RTL/TIMESTAMP.tcl"
# 2) copy this file in ./RTL/TIMESTAMP.tcl
# 3) use any verilog code , write 
#      `include "./TIMESTAMP.v"
#    this code mean "parametr [31:0] C_TIMESTAMP = <compile ctime> ;"
# 4) in compile first period , Quartus read execude this tcl file.
#     and make TIMESTAMP.v file
#     TIMESTAMP.v have parameter C_TIMESTAMP 
#
#
# ICTs
#  M9 : 1st


set now [clock seconds]
puts $now
set now_fmt [clock format $now]
puts $now_fmt
puts [format %08X $now]
if [catch {open "./RTL/TIMESTAMP.v" w} fp] {
   error "file cannot open!!!!"
}
puts $fp "// TIMESTAMP.v"
puts $fp [format "// %s" $now_fmt]
puts $fp [format "// %08X" $now]
puts $fp [format "parameter \[31:0\] C_TIMESTAMP = 32'h%s ;" [format %08X $now] ]
close $fp
