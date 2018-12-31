// TIMESTAMP_MAIN.v
//
//  get compile timestamp , and take in ascii uart txd
//
// ICUu
//  B3 :    sim done
// ICTs
//  M6 : once write
module TIMESTAMP_MAIN
#(
      parameter C_FCK = 48_000_000
    , parameter C_BAUD_RATE = 19_200
)( 
      input CK_i
    , input tri1 XARST_i
    , input tri1 CK_EE_i
    , output TXD_o
    , output [31:0] TIMESTAMPs_o
) ;
    
    `include "TIMESTAMP.v"
    parameter C_DIV_LEN = C_FCK /C_BAUD_RATE;
    integer PCTRs ;
    wire PCTR_cy = & (PCTRs |(~(C_DIV_LEN-1))) ;
    reg [9:0]   SFT_Qs   ;
    reg [3:0] BIT_CTRs ;
    wire BIT_CTR_cy = &(BIT_CTRs | ~((10-1))) ;
    reg [4:0]   WORD_CTRs   ;
    wire WORD_CTR_cy = & WORD_CTRs ;

    function [9:0] f_HEX2ASC ;
        input [3:0] HEXs ;
        reg [7:0] buff ;
    begin
        buff = HEXs + 'h30 + ((HEXs>=10) * 7) ;
        f_HEX2ASC = {1'b1 , buff , 1'b0 } ;
    end endfunction 

    always@(posedge CK_i or negedge XARST_i )
        if( ~ XARST_i )
        begin
            PCTRs <= (C_DIV_LEN-1);
            BIT_CTRs <= 10 - 1 ;
            WORD_CTRs <= ~0 ;
            SFT_Qs <= ~ 0 ;
        end else if( CK_EE_i )
        begin
            PCTRs <= (PCTR_cy) ? 0 : (PCTRs + 1);
            if( PCTR_cy )
            begin
                if( BIT_CTR_cy)
                begin
                    BIT_CTRs <= 0 ;
                    case( WORD_CTRs ) 
                        0,1,2,3,4,5,6,7 : 
                            SFT_Qs <= f_HEX2ASC(  
                                C_TIMESTAMP[4*(7-WORD_CTRs) +:4]
                            ) ;
                        8 :
                            SFT_Qs <= {1'b1 , 8'h0D ,1'b0} ;
                        9 :
                            SFT_Qs <= {1'b1 , "\n" , 1'b0} ;
                        default 
                            SFT_Qs <= ~0 ;
                    endcase
                    if( WORD_CTR_cy )
                        WORD_CTRs <= 0 ;
                    else
                        WORD_CTRs <= WORD_CTRs + 1 ;
                end else
                begin
                    SFT_Qs <= {1'b1 , SFT_Qs[9:1]} ;
                    BIT_CTRs <= BIT_CTRs + 1 ;
                end
            end
        end
    assign TXD_o = SFT_Qs[0] ;
    assign TIMESTAMPs_o  = C_TIMESTAMP ;
endmodule


`timescale 1ns/1ns
module TB_TIMESTAMP_MAIN
#(
    parameter C_C = 10.0
)(
) ;
    reg CK ;
    reg XAR ;
    initial
    begin
        CK <= 1'b1 ;
        forever
        begin
            #(C_C/2) CK <= ~ CK ;
        end
    end
    initial
    begin
        XAR <= 1'b1 ;
        #(C_C/2-1) XAR <= 1'b0 ;
        #(C_C + 2 ) XAR <= 1'b1 ;
    end

    wire TXD_o ;
    TIMESTAMP_MAIN
    #(
          .C_FCK        ( 10_000    )
        , .C_BAUD_RATE  (    300    )
    )TIMESTAMP_MAIN
    (
          .CK_i             ( CK        )//24fsc(made by pll)85.92MHz
        , .XARST_i          ( XAR       ) 
        , .TXD_o            ( TXD_o  )
    ) ;

    reg [7:0] LATCHED_DATs ;
    reg [7:0] LATCHED_WORDs ;
    wire shift = TIMESTAMP_MAIN.PCTR_cy  ;
    wire latch = (TIMESTAMP_MAIN.BIT_CTRs == 8) ;
    always@(posedge CK or negedge XAR)
        if( ~ XAR )
        begin
            LATCHED_DATs <= ~0 ;
            LATCHED_WORDs <= ~ 0 ;
        end else 
            if( shift )
            begin
                LATCHED_DATs <= {TXD_o , LATCHED_DATs[7:1]} ;
                if( latch )
                    LATCHED_WORDs <= {TXD_o , LATCHED_DATs[7:1]} ;
            end

    initial 
    begin
        repeat(20_000) @(posedge CK) ;
        $stop ;
        $finish ;
    end
endmodule
