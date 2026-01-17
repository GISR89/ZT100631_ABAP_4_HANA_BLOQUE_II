@AbapCatalog.sqlViewName: 'ZIV012ASO0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Path Exp.'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_11_PATH_T100631
  as select from scarr
  association [*] to ZI_10_PATH_T100631 as _Flights on _Flights.carrid = scarr.carrid

{
  key scarr.carrid,
      scarr.carrname,
      _Flights
}
