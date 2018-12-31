// TIMESTAMP_TOP.v
//
//timestamp getter demo sample code
// take timestamp in UART TxD eternaly
//
//ICTs
//  N9 :  start
`include "TIMESTAMP_MAIN.v"
module TIMESTAMP_TOP
#(
      parameter C_FCK = 48_000_000
    , parameter C_BAUD_RATE = 19_200
)( 
      input CK_i                //27
    , input tri1 XARST_i        //123
    , output TXD_o              //62
) ;

    wire PCTR_cy     ;
    wire BIT_CTR_cy  ;
    wire WORD_CTR_cy  ;
    TIMESTAMP_MAIN
    #(
          .C_FCK        ( C_FCK         )
        , .C_BAUD_RATE  ( C_BAUD_RATE   )
    ) TIMESTAMP_MAIN
    ( 
          .CK_i             (  CK_i         )
        , .XARST_i          ( XARST_i       )
        , .TXD_o            ( TXD_o         )
    ) ;

endmodule
