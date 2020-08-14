@AbapCatalog.sqlViewName: 'ZCDS_I_ACC_QUERY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS with CRUD for accounts table'

@ObjectModel: {
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true,
    representativeKey: 'account_number',
    semanticKey: ['account_number'],
    compositionRoot: true,
    transactionalProcessingEnabled: true,
    writeActivePersistence: 'ZACCOUNTS_VGN'
}

define view ZCDS_I_ACCOUNTS_VGN
  as select from zaccounts_vgn
{
      //ZACCOUNTS_VGN
  key account_number,
      bank_name,
      city,
      balance,
      account_category,
      lastchangedat
}
