*&---------------------------------------------------------------------*
*& Report zcds_path_expr_t100631
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_path_expr_t100631.

DATA gv_carrid TYPE s_carr_id VALUE 'LH'.

cl_demo_input=>request( CHANGING field = gv_carrid ).

SELECT FROM zi_11_path_t100631 AS cds
       FIELDS cds~carrname,
       \_Flights-connid AS Connid,
       \_Flights-carrid AS Carrid,
       \_Flights-airpfrom AS Airpfrom
       WHERE cds~carrid EQ @gv_carrid
       INTO TABLE @DATA(gt_results).

IF sy-subrc EQ 0.
  cl_demo_output=>display( gt_results )    .
ENDIF.
