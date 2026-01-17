@AbapCatalog.sqlViewName: 'ZIV04ASOC0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Text for Associations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel: {
    dataCategory: #TEXT,
    representativeKey: 'CountryKey'
}
define view ZI_04_ASOC_T100631
  as select from t005t
{
  key land1   as CountryKey,
      @Semantics.language: true
  key spras   as Language,
      @Semantics.text: true
      @EndUserText.label: 'Country Name'
      landx50 as CountryName
}
