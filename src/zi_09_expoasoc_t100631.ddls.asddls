@AbapCatalog.sqlViewName: 'ZIV09ASO0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association Exp.'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_09_EXPOASOC_T100631
  as select from spfli as Flight
  association [1] to ZI_08_EXPASOC_T100631 as _AirportFrom on _AirportFrom.AirportId = Flight.airpfrom
{
  key carrid,
  key connid,
      countryfr,
      cityfrom,
      airpfrom,
      _AirportFrom
}
