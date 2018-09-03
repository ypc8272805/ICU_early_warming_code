﻿-- Materialized View: mimiciii.new_0709_vari

-- DROP MATERIALIZED VIEW mimiciii.new_0709_vari;

-- Description 
--   该程序功能为：计算患者进入ICU第一天生理数据的衍生变量
--   程序流程为：选择符合要求的患者生理数据，并求解其最大值，最小值，平均值，方差，标准差，四分位数，极差。

--   程序运行结果；生成一个包含患者进入ICU 第一天的生理数据的衍生变量的表







CREATE MATERIALIZED VIEW mimiciii.new_0709_vari AS 
 SELECT a.subject_id,
    a.heartrate_min AS qhrmin,
    a.heartrate_max AS qhrmax,
    a.heartrate_mean AS qhrmean,
    a.heartrate_var AS qhrvar,
    a.heartrate_stddev AS qhrstddev,
    a.heartrate_range AS qhrrange,
    a.heartrate_perc_25 AS qhrperc25,
    a.heartrate_perc_50 AS qhrperc50,
    a.heartrate_perc_75 AS qhrperc75,
    b.heartrate_min AS hhrmin,
    b.heartrate_max AS hhrmax,
    b.heartrate_mean AS hhrmean,
    b.heartrate_var AS hhrvar,
    b.heartrate_stddev AS hhrstddev,
    b.heartrate_range AS hhrrange,
    b.heartrate_perc_25 AS hhrperc25,
    b.heartrate_perc_50 AS hhrperc50,
    b.heartrate_perc_75 AS hhrperc75,
    a.resprate_min AS qrespmin,
    a.resprate_max AS qrespmax,
    a.resprate_mean AS qrespmean,
    a.resprate_var AS qrespvar,
    a.resprate_stddev AS qrespstddev,
    a.resprate_range AS qresprange,
    a.resprate_perc_25 AS qrespperc25,
    a.resprate_perc_50 AS qrespperc50,
    a.resprate_perc_75 AS qrespperc75,
    b.resprate_min AS hrespmin,
    b.resprate_max AS hrespmax,
    b.resprate_mean AS hrespmean,
    b.resprate_var AS hrespvar,
    b.resprate_stddev AS hrespstddev,
    b.resprate_range AS hresprange,
    b.resprate_perc_25 AS hrespperc25,
    b.resprate_perc_50 AS hrespperc50,
    b.resprate_perc_75 AS hrespperc75,
    a.tempc_min AS qtempmin,
    a.tempc_max AS qtempmax,
    a.tempc_mean AS qtempmean,
    a.tempc_var AS qtempvar,
    a.tempc_stddev AS qtempstddev,
    a.tempc_range AS qtemprange,
    a.tempc_perc_25 AS qtempperc25,
    a.tempc_perc_50 AS qtempperc50,
    a.tempc_perc_75 AS qtempperc75,
    b.tempc_min AS htempmin,
    b.tempc_max AS htempmax,
    b.tempc_mean AS htempmean,
    b.tempc_var AS htempvar,
    b.tempc_stddev AS htempstddev,
    b.tempc_range AS htemprange,
    b.tempc_perc_25 AS htempperc25,
    b.tempc_perc_50 AS htempperc50,
    b.tempc_perc_75 AS htempperc75,
    a.spo2_min AS qspo2min,
    a.spo2_max AS qspo2max,
    a.spo2_mean AS qspo2mean,
    a.spo2_var AS qspo2var,
    a.spo2_stddev AS qspo2stddev,
    a.spo2_range AS qspo2range,
    a.spo2_perc_25 AS qspo2perc25,
    a.spo2_perc_50 AS qspo2perc50,
    a.spo2_perc_75 AS qspo2perc75,
    b.spo2_min AS hspo2min,
    b.spo2_max AS hspo2max,
    b.spo2_mean AS hspo2mean,
    b.spo2_var AS hspo2var,
    b.spo2_stddev AS hspo2stddev,
    b.spo2_range AS hspo2range,
    b.spo2_perc_25 AS hspo2perc25,
    b.spo2_perc_50 AS hspo2perc50,
    b.spo2_perc_75 AS hspo2perc75,
    a.nisysbp_min AS qnisysbp_min,
    a.nisysbp_max AS qnisysbp_max,
    a.nisysbp_mean AS qnisysbp_mean,
    a.nisysbp_var AS qnisysbp_var,
    a.nisysbp_stddev AS qnisysbp_stddev,
    a.nisysbp_range AS qnisysbp_range,
    a.nisysbp_perc_25 AS qnisysbp_perc25,
    a.nisysbp_perc_50 AS qnisysbp_perc50,
    a.nisysbp_perc_75 AS qnisysbp_perc75,
    b.nisysbp_min AS hnisysbp_min,
    b.nisysbp_max AS hnisysbp_max,
    b.nisysbp_mean AS hnisysbp_mean,
    b.nisysbp_var AS hnisysbp_var,
    b.nisysbp_stddev AS hnisysbp_stddev,
    b.nisysbp_range AS hnisysbp_range,
    b.nisysbp_perc_25 AS hnisysbp_perc25,
    b.nisysbp_perc_50 AS hnisysbp_perc50,
    b.nisysbp_perc_75 AS hnisysbp_perc75,
    a.nidiasbp_min AS qnidiasbp_min,
    a.nidiasbp_max AS qnidiasbp_max,
    a.nidiasbp_mean AS qnidiasbp_mean,
    a.nidiasbp_var AS qnidiasbp_var,
    a.nidiasbp_stddev AS qnidiasbp_stddev,
    a.nidiasbp_range AS qnidiasbp_range,
    a.nidiasbp_perc_25 AS qnidiasbp_perc25,
    a.nidiasbp_perc_50 AS qnidiasbp_perc50,
    a.nidiasbp_perc_75 AS qnidiasbp_perc75,
    b.nidiasbp_min AS hnidiasbp_min,
    b.nidiasbp_max AS hnidiasbp_max,
    b.nidiasbp_mean AS hnidiasbp_mean,
    b.nidiasbp_var AS hnidiasbp_var,
    b.nidiasbp_stddev AS hnidiasbp_stddev,
    b.nidiasbp_range AS hnidiasbp_range,
    b.nidiasbp_perc_25 AS hnidiasbp_perc25,
    b.nidiasbp_perc_50 AS hnidiasbp_perc50,
    b.nidiasbp_perc_75 AS hnidiasbp_perc75,
    a.nimeanbp_min AS qnimeanbp_min,
    a.nimeanbp_max AS qnimeanbp_max,
    a.nimeanbp_mean AS qnimeanbp_mean,
    a.nimeanbp_var AS qnimeanbp_var,
    a.nimeanbp_stddev AS qnimeanbp_stddev,
    a.nimeanbp_range AS qnimeanbp_range,
    a.nimeanbp_perc_25 AS qnimeanbp_perc25,
    a.nimeanbp_perc_50 AS qnimeanbp_perc50,
    a.nimeanbp_perc_75 AS qnimeanbp_perc75,
    b.nimeanbp_min AS hnimeanbp_min,
    b.nimeanbp_max AS hnimeanbp_max,
    b.nimeanbp_mean AS hnimeanbp_mean,
    b.nimeanbp_var AS hnimeanbp_var,
    b.nimeanbp_stddev AS hnimeanbp_stddev,
    b.nimeanbp_range AS hnimeanbp_range,
    b.nimeanbp_perc_25 AS hnimeanbp_perc25,
    b.nimeanbp_perc_50 AS hnimeanbp_perc50,
    b.nimeanbp_perc_75 AS hnimeanbp_perc75
   FROM mimiciii.new_0709_vitalsfirstday1 a,
    mimiciii.new_0709_vitalsfirstday2 b
  WHERE a.subject_id = b.subject_id AND a.hadm_id = b.hadm_id AND a.icustay_id = b.icustay_id
WITH DATA;

ALTER TABLE mimiciii.new_0709_vari
  OWNER TO postgres;
