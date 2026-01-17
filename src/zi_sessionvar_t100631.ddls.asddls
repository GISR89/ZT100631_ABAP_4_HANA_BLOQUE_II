@AbapCatalog.sqlViewName: 'ZCDS_04_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Session Variables'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_SessionVar_T100631
  as select from t000
{
  $session.client          as Client,
  $session.system_date     as SystemDate,
  $session.system_language as SystemLanguage,
  $session.user            as UserField
}
