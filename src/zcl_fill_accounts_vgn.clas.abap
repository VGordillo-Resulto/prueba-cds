CLASS zcl_fill_accounts_vgn DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_accounts_vgn IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: lt_accounts TYPE TABLE OF zaccounts_vgn.

    "read current timestamp
    GET TIME STAMP FIELD DATA(zv_tsl).

    "fill internal table
    lt_accounts =

    VALUE #( ( client ='100' account_number ='00000000' bank_name ='Volksbank' city = 'Gaertringen' balance ='200.00 '  account_category ='01' lastchangedat = zv_tsl )
    ( client ='100' account_number ='00000001' bank_name ='Sparkasse' city ='Schwetzingen' balance ='500.00 ' account_category ='02' lastchangedat = zv_tsl )
    ( client ='100' account_number ='00000002' bank_name ='Commerzbank' city ='Nuernberg' balance ='150.00 ' account_category ='02' lastchangedat = zv_tsl )
    ).

    "Delete possible entries; insert new entries
    DELETE FROM zaccounts_vgn.

    INSERT zaccounts_vgn FROM TABLE @lt_accounts.

    "Check result in console
    out->write( sy-dbcnt ).
    out->write(  'DONE!' ).
  ENDMETHOD.

ENDCLASS.
