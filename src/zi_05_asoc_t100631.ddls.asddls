@AbapCatalog.sqlViewName: 'ZIV05ASO0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_05_ASOC_T100631
  with parameters
    p_airline  :abap.char( 2 ),
    p_language :abap.char( 1 )
  as select from spfli as Flight
  association [1] to ZI_04_ASOC_T100631 as _CountryNameFrom on  $projection.CountryKeyFrom = _CountryNameFrom.CountryKey
                                                            and _CountryNameFrom.Language  = $parameters.p_language
  association [1] to ZI_04_ASOC_T100631 as _CountryNameTo   on  $projection.CountryKeyTo = _CountryNameTo.CountryKey
                                                            and _CountryNameTo.Language  = $parameters.p_language

{
  key Flight.carrid                as AirlineCode,
  key Flight.connid                as FlightConnection,
      Flight.cityfrom              as CityFrom,
      Flight.countryfr             as CountryKeyFrom,
      _CountryNameFrom.CountryName as CountryNameFrom,
      Flight.countryto             as CountryKeyTo,
      Flight.cityto                as CityTo,
      _CountryNameTo.CountryName   as CountryNameTo
}
where
  Flight.carrid = $parameters.p_airline;
