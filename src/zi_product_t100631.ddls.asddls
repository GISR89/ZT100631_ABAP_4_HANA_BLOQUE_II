@AbapCatalog.sqlViewName: 'ZCDS_01_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Basic view'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_PRODUCT_T100631
  as select from zproduct_t100631
{
  key product            as Product,
      product_type       as ProductType,
      creation_date_time as CreationDateTime
}
