@AbapCatalog.sqlViewName: 'ZCDS_02_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - cast'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_VieweWithCast_T100631
  as select from t000
{
  t000.logsys                                                 as ProjectField,
  '20240809'                                                  as CharField,
  cast( '20240809' as abap.dats )                             as DateField,
  cast( cast( 'E' as abap.lang ) as sylangu preserving type ) as LanguageField,
  1.2                                                         as FloatingField,
  fltp_to_dec(1.2 as abap.dec(4,2) )                          as DecimalField

}
