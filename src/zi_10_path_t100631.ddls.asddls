@AbapCatalog.sqlViewName: 'ZIV011ASO0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Path Exp.'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_10_PATH_T100631
  as select from spfli
  association [0..*] to sflight  as _Flight   on  _Flight.carrid = spfli.carrid
                                              and _Flight.connid = spfli.connid
  association        to sairport as _Airports on  _Airports.id = spfli.airpfrom

{
  key carrid,
  key connid,
      spfli.airpfrom,
      _Flight,
      _Airports
}
