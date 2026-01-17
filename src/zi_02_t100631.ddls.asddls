@AbapCatalog.sqlViewName: 'ZIV02INNER0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Inner Join'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_02_T100631
  with parameters
    pCurrency : s_currcode
  as select from spfli   as FlightPlan
    inner join   sflight as Flight on  FlightPlan.carrid = Flight.carrid
                                   and FlightPlan.connid = Flight.connid
{
  key FlightPlan.carrid    as Carrid,
  key Flight.connid        as Connid,
      FlightPlan.countryfr as CountryFrom,
      Flight.fldate        as FlighDate,
      FlightPlan.period    as Period

}
where
  Flight.currency = $parameters.pCurrency;
