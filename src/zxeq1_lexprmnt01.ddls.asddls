@AbapCatalog.sqlViewName: 'ZXEQ1_QEXPRMNT01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Experiment 01'
@OData.publish: true
define view ZXEQ1_LEXPRMNT01
  as select from zxeq1_dexprmnt01
{
  key uname,
      dats,
      tims
}
