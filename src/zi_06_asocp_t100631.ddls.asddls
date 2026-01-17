@AbapCatalog.sqlViewName: 'ZIV06ASO0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Association Parameters'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_06_ASOCP_T100631
  with parameters
    pAirlCode : s_carr_id
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carname,
      @Semantics.currencyCode: true
      currcode as Curcode,
      @Semantics.url.mimeType: 'Url'
      url      as Url

}
where
  carrid = $parameters.pAirlCode;
