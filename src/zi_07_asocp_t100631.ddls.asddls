@AbapCatalog.sqlViewName: 'ZIV07ASO0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association Parameters'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_07_ASOCP_T100631
  with parameters
    p_Airlinecode : s_carr_id
  as select from sflight as Flight
  association [1] to ZI_06_ASOCP_T100631 as _Airline on _Airline.Carrid = Flight.carrid
{
  key carrid,
  key connid,
  key fldate,
      @Semantics.amount.currencyCode: 'Curcode'
      price,
      currency,
      planetype,
      _Airline( pAirlCode: $parameters.p_Airlinecode).Carname,
      @Semantics.currencyCode: true
      _Airline( pAirlCode: $parameters.p_Airlinecode ).Curcode,
      _Airline( pAirlCode: $parameters.p_Airlinecode ).Url
}
where
  carrid = $parameters.p_Airlinecode
