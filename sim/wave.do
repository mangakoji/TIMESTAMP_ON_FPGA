onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB -radix hexadecimal /TB_TIMESTAMP_MAIN/CK
add wave -noupdate -expand -group TB -radix hexadecimal /TB_TIMESTAMP_MAIN/XAR
add wave -noupdate -expand -group TB -radix hexadecimal /TB_TIMESTAMP_MAIN/TXD_o
add wave -noupdate -expand -group TB -radix ascii -childformat {{{/TB_TIMESTAMP_MAIN/LATCHED_DATs[7]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/LATCHED_DATs[6]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/LATCHED_DATs[5]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/LATCHED_DATs[4]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/LATCHED_DATs[3]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/LATCHED_DATs[2]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/LATCHED_DATs[1]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/LATCHED_DATs[0]} -radix hexadecimal}} -expand -subitemconfig {{/TB_TIMESTAMP_MAIN/LATCHED_DATs[7]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/LATCHED_DATs[6]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/LATCHED_DATs[5]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/LATCHED_DATs[4]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/LATCHED_DATs[3]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/LATCHED_DATs[2]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/LATCHED_DATs[1]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/LATCHED_DATs[0]} {-height 15 -radix hexadecimal}} /TB_TIMESTAMP_MAIN/LATCHED_DATs
add wave -noupdate -expand -group TB -radix ascii -childformat {{{/TB_TIMESTAMP_MAIN/LATCHED_WORDs[7]} -radix ascii} {{/TB_TIMESTAMP_MAIN/LATCHED_WORDs[6]} -radix ascii} {{/TB_TIMESTAMP_MAIN/LATCHED_WORDs[5]} -radix ascii} {{/TB_TIMESTAMP_MAIN/LATCHED_WORDs[4]} -radix ascii} {{/TB_TIMESTAMP_MAIN/LATCHED_WORDs[3]} -radix ascii} {{/TB_TIMESTAMP_MAIN/LATCHED_WORDs[2]} -radix ascii} {{/TB_TIMESTAMP_MAIN/LATCHED_WORDs[1]} -radix ascii} {{/TB_TIMESTAMP_MAIN/LATCHED_WORDs[0]} -radix ascii}} -subitemconfig {{/TB_TIMESTAMP_MAIN/LATCHED_WORDs[7]} {-height 15 -radix ascii} {/TB_TIMESTAMP_MAIN/LATCHED_WORDs[6]} {-height 15 -radix ascii} {/TB_TIMESTAMP_MAIN/LATCHED_WORDs[5]} {-height 15 -radix ascii} {/TB_TIMESTAMP_MAIN/LATCHED_WORDs[4]} {-height 15 -radix ascii} {/TB_TIMESTAMP_MAIN/LATCHED_WORDs[3]} {-height 15 -radix ascii} {/TB_TIMESTAMP_MAIN/LATCHED_WORDs[2]} {-height 15 -radix ascii} {/TB_TIMESTAMP_MAIN/LATCHED_WORDs[1]} {-height 15 -radix ascii} {/TB_TIMESTAMP_MAIN/LATCHED_WORDs[0]} {-height 15 -radix ascii}} /TB_TIMESTAMP_MAIN/LATCHED_WORDs
add wave -noupdate -expand -group TB -radix hexadecimal /TB_TIMESTAMP_MAIN/shift
add wave -noupdate -expand -group TB -radix hexadecimal /TB_TIMESTAMP_MAIN/latch
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/CK_i
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/XARST_i
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/TXD_o
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/TIMESTAMPs_o
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/PCTRs
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/PCTR_cy
add wave -noupdate -expand -group target -radix hexadecimal -childformat {{{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[9]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[8]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[7]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[6]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[5]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[4]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[3]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[2]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[1]} -radix hexadecimal} {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[0]} -radix hexadecimal}} -expand -subitemconfig {{/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[9]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[8]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[7]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[6]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[5]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[4]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[3]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[2]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[1]} {-height 15 -radix hexadecimal} {/TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs[0]} {-height 15 -radix hexadecimal}} /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/SFT_Qs
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/BIT_CTRs
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/BIT_CTR_cy
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/WORD_CTRs
add wave -noupdate -expand -group target -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/WORD_CTR_cy
add wave -noupdate -expand -group f_HEX2ASC -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/f_HEX2ASC/f_HEX2ASC
add wave -noupdate -expand -group f_HEX2ASC -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/f_HEX2ASC/HEXs
add wave -noupdate -expand -group f_HEX2ASC -radix hexadecimal /TB_TIMESTAMP_MAIN/TIMESTAMP_MAIN/f_HEX2ASC/buff
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3466 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {3575 ns}
