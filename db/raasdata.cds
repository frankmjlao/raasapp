//namespace app.raasdata;

using {Country} from '@sap/cds/common';

context app.raasdata {

    type BusinessKey : String(10);
    type SDate : DateTime;
    type LText : String(1024);


    entity Interactions_Header {
        key ID        : Integer;
            ITEMS     : Composition of many Interactions_Items
                            on ITEMS.INTHeader = $self;
            PARTNER   : BusinessKey;
            LOG_DATE  : SDate;
            BPCOUNTRY : Country;

    };

    entity Interactions_Items {

        key INTHeader : Association to Interactions_Header;
        key TEXT_ID   : BusinessKey;
            LANGU     : String(2);
            LOGTEXT   : LText;
    };
}


@cds.persistence.exists
entity![WSTRANSACTIONVIEW]{
    key![WS_TRANSACTION_ID]  : Integer64   @title : 'WS_TRANSACTION_ID';
    ![WS_ID]              : String(100) @title : 'WS_ID';
    ![BATCH_ID]           : String(100) @title : 'BATCH_ID';
    ![WS_CREATEDATE]      : Date        @title : 'WS_CREATEDATE';
    ![GENERICATTRIBUTE1]  : String(500) @title : 'GENERICATTRIBUTE1';
    ![GENERICATTRIBUTE2]  : String(500) @title : 'GENERICATTRIBUTE2';
    ![GENERICATTRIBUTE3]  : String(500) @title : 'GENERICATTRIBUTE3';
    ![GENERICATTRIBUTE4]  : String(500) @title : 'GENERICATTRIBUTE4';
    ![GENERICATTRIBUTE5]  : String(5000)@title : 'GENERICATTRIBUTE5';
    ![GENERICATTRIBUTE6]  : String(500) @title : 'GENERICATTRIBUTE6';
    ![GENERICATTRIBUTE7]  : String(500) @title : 'GENERICATTRIBUTE7';
    ![GENERICATTRIBUTE8]  : String(500) @title : 'GENERICATTRIBUTE8';
    ![GENERICATTRIBUTE9]  : String(500) @title : 'GENERICATTRIBUTE9';
    ![GENERICATTRIBUTE10] : String(500) @title : 'GENERICATTRIBUTE10';
    ![GENERICATTRIBUTE11] : String(500) @title : 'GENERICATTRIBUTE11';
    ![GENERICATTRIBUTE12] : String(500) @title : 'GENERICATTRIBUTE12';
    ![GENERICATTRIBUTE13] : String(500) @title : 'GENERICATTRIBUTE13';
    ![GENERICATTRIBUTE14] : String(500) @title : 'GENERICATTRIBUTE14';
    ![GENERICATTRIBUTE15] : String(500) @title : 'GENERICATTRIBUTE15';
    ![GENERICATTRIBUTE16] : String(500) @title : 'GENERICATTRIBUTE16';
    ![GENERICATTRIBUTE17] : String(500) @title : 'GENERICATTRIBUTE17';
    ![GENERICATTRIBUTE18] : String(500) @title : 'GENERICATTRIBUTE18';
    ![GENERICATTRIBUTE19] : String(500) @title : 'GENERICATTRIBUTE19';
    ![GENERICATTRIBUTE20] : String(500) @title : 'GENERICATTRIBUTE20';
    ![GENERICATTRIBUTE21] : String(500) @title : 'GENERICATTRIBUTE21';
    ![GENERICATTRIBUTE22] : String(500) @title : 'GENERICATTRIBUTE22';
    ![GENERICATTRIBUTE23] : String(500) @title : 'GENERICATTRIBUTE23';
    ![GENERICATTRIBUTE24] : String(500) @title : 'GENERICATTRIBUTE24';
    ![GENERICATTRIBUTE25] : String(500) @title : 'GENERICATTRIBUTE25';
    ![GENERICATTRIBUTE26] : String(500) @title : 'GENERICATTRIBUTE26';
    ![GENERICATTRIBUTE27] : String(500) @title : 'GENERICATTRIBUTE27';
    ![GENERICATTRIBUTE28] : String(500) @title : 'GENERICATTRIBUTE28';
    ![GENERICATTRIBUTE29] : String(500) @title : 'GENERICATTRIBUTE29';
    ![GENERICATTRIBUTE30] : String(500) @title : 'GENERICATTRIBUTE30';
}


/*
entity ws_transaction {

    WS_TRANSACTION_ID : Integer;
    WS_ID : String(100);
    BATCH_ID : String(100);
    WS_CREATEDATE : DateTime;
    GENERICATTRIBUTE1 : LText;
    GENERICATTRIBUTE2 : LText;
    GENERICATTRIBUTE3 : LText;
    GENERICATTRIBUTE4 : LText;
    GENERICATTRIBUTE5 : LText;
    GENERICATTRIBUTE6 : LText;
    GENERICATTRIBUTE7 : LText;
    GENERICATTRIBUTE8 : LText;
    GENERICATTRIBUTE9 : LText;
    GENERICATTRIBUTE10 : LText;
    GENERICATTRIBUTE11 : LText;
    GENERICATTRIBUTE12 : LText;
    GENERICATTRIBUTE13 : LText;
    GENERICATTRIBUTE14 : LText;
    GENERICATTRIBUTE15 : LText;
    GENERICATTRIBUTE16 : LText;
    GENERICATTRIBUTE17 : LText;
    GENERICATTRIBUTE18 : LText;
    GENERICATTRIBUTE19 : LText;
    GENERICATTRIBUTE20 : LText;
    GENERICATTRIBUTE21 : LText;
    GENERICATTRIBUTE22 : LText;
    GENERICATTRIBUTE23 : LText;
    GENERICATTRIBUTE24 : LText;
    GENERICATTRIBUTE25 : LText;
    GENERICATTRIBUTE26 : LText;
    GENERICATTRIBUTE27 : LText;
    GENERICATTRIBUTE28 : LText;
    GENERICATTRIBUTE29 : LText;
    GENERICATTRIBUTE30 : LText;

};

*/
