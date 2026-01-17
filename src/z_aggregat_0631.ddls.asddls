@AbapCatalog.sqlViewName: 'ZCDS_07_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Aggregation'
@Metadata.ignorePropagatedAnnotations: true
define view Z_AGGREGAT_0631
  as select from ZI_VIEWAGGRE_0631
{
  min( Field3)                    as FieldMin,
  max( Field3 )                   as FieldMax,
  avg( Field3 )                   as FieldAvg,
  sum( Field3)                    as FieldSum,
  cast( sum(Field3) as abap.int4) as FieldSumInt1,
  count( distinct( Field1) )      as FieldCountDist,
  count( * )                      as FieldCountAll
}
group by
  Field1
