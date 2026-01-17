@AbapCatalog.sqlViewName: 'ZCDS_09_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Convqtty'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_CONVQTTY_0631
  with parameters
    p_connid : s_carr_id
  as select from sflight
{
      @Semantics.text: true
  key carrid                                                  as Carrid,
  key connid                                                  as Connid,
  key fldate                                                  as Fldate,
      @Semantics.amount.currencyCode: 'Currency'
      price                                                   as Price,
      @Semantics.currencyCode: true
      currency                                                as Currency,

      currency_conversion( amount => price,
                           source_currency => currency,
                           target_currency => cast( 'EUR' as abap.cuky( 5 ) ),
                           exchange_rate_date => fldate,
                           error_handling  => 'SET_TO_NULL' ) as PrinceInEUR
}
where
  carrid = $parameters.p_connid
