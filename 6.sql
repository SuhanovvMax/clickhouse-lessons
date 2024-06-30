create materialized view stage.shk_ext_log_cur to currents.shk_ext as
    select shk_id,
           dt,
           ext_barcode
    from stage.shk_ext_log;
