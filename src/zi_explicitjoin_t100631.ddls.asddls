@AbapCatalog.sqlViewName: 'ZVEXPJOIN0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Explicit Join'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_ExplicitJoin_T100631
  as select from spfli
  association to scarr as _Scarr on spfli.carrid = _Scarr.carrid
{
  key spfli.carrid           as Carrid,
  key spfli.connid           as Connid,
      _Scarr[inner].carrname as Carrier,
      spfli.cityfrom         as Departure,
      spfli.cityto           as Arival,
      _Scarr.currcode        as CurrencyCode
}
