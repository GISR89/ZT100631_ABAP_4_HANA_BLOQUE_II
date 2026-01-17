@AbapCatalog.sqlViewName: 'ZCDS_08_T100631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Conversion'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_CONVERSION_0631
  as select from saplane
{
  key planetype                                                                         as PlantType,
      tankcap                                                                           as TankCap,
      cap_unit                                                                          as CapUnit,
      cast ( unit_conversion( quantity       => tankcap,
                              source_unit    => cap_unit,
                              target_unit    => cast( 'M3' as abap.unit( 3 ) ),
                              error_handling => 'SET_TO_NULL'  ) as abap.dec( 10, 3 ) ) as TankCapInM3
}
