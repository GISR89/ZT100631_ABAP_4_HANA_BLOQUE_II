@AbapCatalog.sqlViewName: 'ZIV08ASO0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association Exp.'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.representativeKey: 'AirportId'
define view ZI_08_EXPASOC_T100631
  as select from sairport
{
  key id        as AirportId,
      name      as AirportName,
      time_zone as AirportTimeZone
}
