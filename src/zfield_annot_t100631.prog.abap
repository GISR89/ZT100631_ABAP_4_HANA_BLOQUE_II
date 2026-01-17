*&---------------------------------------------------------------------*
*& Report zfield_annot_t100631
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zfield_annot_t100631.

SELECT FROM Cds_View_Annotation_Position
  FIELDS *
  WHERE cdsname EQ 'ZI_CONVQTTY_0631'
    AND annotationname LIKE '%.%'
  INTO TABLE @DATA(gt_annotations_header).

cl_demo_output=>write( gt_annotations_header ).


SELECT FROM Cds_Field_Annotation
 FIELDS *
 WHERE cdsname EQ 'ZI_CONVQTTY_0631'
   AND annotationname LIKE '%.%'
 INTO TABLE @DATA(gt_annotations_field).

cl_demo_output=>write( gt_annotations_field ).

cl_demo_output=>display(  ).
