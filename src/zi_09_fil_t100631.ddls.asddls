@AbapCatalog.sqlViewName: 'ZIV010ASO0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association Filters'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_09_FIL_T100631
  with parameters
    @Environment.systemField: #SYSTEM_LANGUAGE
    pLanguage : syst_langu
  as select from scarr as CompanyCode
  association [0..*] to tcurt as _Currency on _Currency.waers = CompanyCode.currcode
{
  key CompanyCode.carrid                             as Carrid,
      CompanyCode.carrname                           as CarrName,
      CompanyCode.currcode                           as CurrencyCode,
      $parameters.pLanguage                          as Language,
      _Currency[1:spras = $parameters.pLanguage].ktext as CurrencyName,
      _Currency[1:spras = $parameters.pLanguage].ltext as CurrencyName1
}
