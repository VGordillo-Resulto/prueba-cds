CLASS zcl_get_accounts_data_vgn DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_get_accounts_data_vgn IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: lt_accounts TYPE ztt_accounts_vgn.

    SELECT * FROM zaccounts_vgn INTO TABLE @lt_accounts.

    out->write( EXPORTING
    data = lt_accounts
    name = 'Accounts:' ).

  ENDMETHOD.

ENDCLASS.
