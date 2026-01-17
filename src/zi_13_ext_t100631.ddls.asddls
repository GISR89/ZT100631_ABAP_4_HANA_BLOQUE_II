@AbapCatalog.sqlViewAppendName: 'ZIV013ASO0631'
@EndUserText.label: 'CDS - Extend'
extend view ZI_11_PATH_T100631 with ZI_13_EXT_T100631
{
  scarr.currcode,
  scarr.url
}
