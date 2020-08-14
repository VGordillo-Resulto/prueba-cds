class ZCL_ZXEQ1_LEXPRMNT01 definition
  public
  inheriting from CL_SADL_GTK_EXPOSURE_MPC
  final
  create public .

public section.
protected section.

  methods GET_PATHS
    redefinition .
  methods GET_TIMESTAMP
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZXEQ1_LEXPRMNT01 IMPLEMENTATION.


  method GET_PATHS.
et_paths = VALUE #(
( |CDS~ZXEQ1_LEXPRMNT01| )
).
  endmethod.


  method GET_TIMESTAMP.
RV_TIMESTAMP = 20200814073611.
  endmethod.
ENDCLASS.
