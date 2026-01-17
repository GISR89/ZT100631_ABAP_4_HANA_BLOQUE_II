@AbapCatalog.sqlViewName: 'ZCDS_03_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - case'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_CaseStatement_T100631
  as select from zproduct_t100631
{
  key product                         as Product,
      product_type                    as ProductType,

      case (product_type)
      when 'ROH' then 'X'
      else 'Y' end                    as CaseProduct,

      cast( case
      when zproduct_t100631.product_type = 'ROH' then 'XXX'
      when zproduct_t100631.product_type = '' then 'YYY'
      else '' end as abap.char( 3 ) ) as CaseProductChar3,

      creation_date_time              as CreationDateTime
}
