@AbapCatalog.sqlViewName: 'ZCDS_C_ACC_QUERY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS with CRUD for accounts table'

@OData.publish: true

@ObjectModel: {
    representativeKey: 'accountNumber',
    semanticKey: [ 'accountNumber' ],
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true,
    transactionalProcessingDelegated: true
}

define view ZCDS_C_ACCOUNTS_VGN
  as select from ZCDS_I_ACCOUNTS_VGN
{
      //ZCDS_I_ACCOUNTS_VGN
  key account_number   as accountNumber,
      bank_name        as bankName,
      city,
      balance,
      account_category as accountCategory,
      lastchangedat    as lastChangeDate
}
