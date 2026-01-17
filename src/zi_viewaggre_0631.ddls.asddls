@AbapCatalog.sqlViewName: 'ZCDS_06_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Aggregation view'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_VIEWAGGRE_0631
  as select from t000
{
  key 'A'                   as Field1,
  key 'A'                   as Field2,
      cast( 1 as abap.int1) as Field3
}
union select distinct from t000
{
  key 'A'                  as Field1,
  key 'B'                  as Field2,
      cast(2 as abap.int1) as Field3
}
union select distinct from t000
{
  key 'A'                  as Field1,
  key 'C'                  as Field2,
      cast(3 as abap.int1) as Field3
}
