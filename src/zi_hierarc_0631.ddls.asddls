@AbapCatalog.sqlViewName: 'ZIV14HIERAR0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Base for hierarchy'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_HIERARC_0631
  as select from zempl_h_t100631
  association [0..1] to ZI_HIERARC_0631 as _Manager on $projection.Manager = _Manager.Employee
{
  key employee as Employee,
      manager  as Manager,
      name     as Name,
      _Manager
}
