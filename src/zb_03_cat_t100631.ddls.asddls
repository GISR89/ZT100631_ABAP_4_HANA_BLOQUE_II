@AbapCatalog.sqlViewName: 'ZCDS_10_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Cat. Datos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel: {
    dataCategory: #TEXT,
    representativeKey: 'Unit'
}
define view ZB_03_CAT_T100631
  with parameters
    pLanguage : spras
  as select from t006a
{
      @Semantics.language: true
  key spras as Language,
  key msehi as Unit,
      mseh3 as CommercialFormat,
      mseh6 as MaterialType,
      mseht as TechnicalFormat,
      @Semantics.text: true
      @EndUserText.label: 'Unit Of Measurement - Text'
      msehl as UnitText

}
where
  spras = $parameters.pLanguage;
