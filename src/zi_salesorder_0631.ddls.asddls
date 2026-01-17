@AbapCatalog.sqlViewName: 'ZCDS_05_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Sales order'
@Metadata.ignorePropagatedAnnotations: true
@ClientHandling.algorithm: #SESSION_VARIABLE
define view ZI_SALESORDER_0631
  as select from zsalesorder_0631
{
  key salesorder           as Salesorder,
      salesordertype       as Salesordertype,
      soldtoparty          as Soldtoparty,
      salesorganization    as Salesorganization,
      distributionchannel  as Distributionchannel,
      organizationdivision as Organizationdivision,
      deliverystatus       as Deliverystatus,
      deletionindicator    as Deletionindicator,
      createdbyuser        as Createdbyuser,
      creationdatetime     as Creationdatetime,
      lastchangebyuser     as Lastchangebyuser,
      lastchangedatetime   as Lastchangedatetime
}
