﻿-- Materialized View: mimiciii.new_0709_pat_with_characteristic_notcat

-- DROP MATERIALIZED VIEW mimiciii.new_0709_pat_with_characteristic_notcat;


-- Description 
--   该程序功能为：整合所有生理变量，人口统计变量等
--   程序流程为：从各个表格中分别选取患者的生理变量，人口统计变量，无创血压数据等信息

--   程序运行结果；生成一个包含28612患者各个信息的表 


CREATE MATERIALIZED VIEW mimiciii.new_0709_pat_with_characteristic_notcat AS 
 SELECT a.subject_id,
    a.age,
    a.gender,
    a.icutype,
    a.death,
    a.urineoutput,
    a.bmi,
    a.qgcs,
    a.hgcs,
    aa.vent,
    a.qfio2min,
    a.qfio2max,
    a.qfio2mean,
    a.qfio2var,
    a.qfio2stddev,
    a.qfio2range,
    a.qfio2perc_25,
    a.qfio2perc_50,
    a.qfio2perc_75,
    a.hfio2min,
    a.hfio2max,
    a.hfio2mean,
    a.hfio2var,
    a.hfio2stddev,
    a.hfio2range,
    a.hfio2perc_25,
    a.hfio2perc_50,
    a.hfio2perc_75,
    b.qhrmin,
    b.qhrmax,
    b.qhrmean,
    b.qhrvar,
    b.qhrstddev,
    b.qhrrange,
    b.qhrperc25,
    b.qhrperc50,
    b.qhrperc75,
    b.hhrmin,
    b.hhrmax,
    b.hhrmean,
    b.hhrvar,
    b.hhrstddev,
    b.hhrrange,
    b.hhrperc25,
    b.hhrperc50,
    b.hhrperc75,
    b.qrespmin,
    b.qrespmax,
    b.qrespmean,
    b.qrespvar,
    b.qrespstddev,
    b.qresprange,
    b.qrespperc25,
    b.qrespperc50,
    b.qrespperc75,
    b.hrespmin,
    b.hrespmax,
    b.hrespmean,
    b.hrespvar,
    b.hrespstddev,
    b.hresprange,
    b.hrespperc25,
    b.hrespperc50,
    b.hrespperc75,
    b.qtempmin,
    b.qtempmax,
    b.qtempmean,
    b.qtempvar,
    b.qtempstddev,
    b.qtemprange,
    b.qtempperc25,
    b.qtempperc50,
    b.qtempperc75,
    b.htempmin,
    b.htempmax,
    b.htempmean,
    b.htempvar,
    b.htempstddev,
    b.htemprange,
    b.htempperc25,
    b.htempperc50,
    b.htempperc75,
    b.qspo2min,
    b.qspo2max,
    b.qspo2mean,
    b.qspo2var,
    b.qspo2stddev,
    b.qspo2range,
    b.qspo2perc25,
    b.qspo2perc50,
    b.qspo2perc75,
    b.hspo2min,
    b.hspo2max,
    b.hspo2mean,
    b.hspo2var,
    b.hspo2stddev,
    b.hspo2range,
    b.hspo2perc25,
    b.hspo2perc50,
    b.hspo2perc75,
    b.qnisysbp_min,
    b.qnisysbp_max,
    b.qnisysbp_mean,
    b.qnisysbp_var,
    b.qnisysbp_stddev,
    b.qnisysbp_range,
    b.qnisysbp_perc25,
    b.qnisysbp_perc50,
    b.qnisysbp_perc75,
    b.hnisysbp_min,
    b.hnisysbp_max,
    b.hnisysbp_mean,
    b.hnisysbp_var,
    b.hnisysbp_stddev,
    b.hnisysbp_range,
    b.hnisysbp_perc25,
    b.hnisysbp_perc50,
    b.hnisysbp_perc75,
    b.qnidiasbp_min,
    b.qnidiasbp_max,
    b.qnidiasbp_mean,
    b.qnidiasbp_var,
    b.qnidiasbp_stddev,
    b.qnidiasbp_range,
    b.qnidiasbp_perc25,
    b.qnidiasbp_perc50,
    b.qnidiasbp_perc75,
    b.hnidiasbp_min,
    b.hnidiasbp_max,
    b.hnidiasbp_mean,
    b.hnidiasbp_var,
    b.hnidiasbp_stddev,
    b.hnidiasbp_range,
    b.hnidiasbp_perc25,
    b.hnidiasbp_perc50,
    b.hnidiasbp_perc75,
    b.qnimeanbp_min,
    b.qnimeanbp_max,
    b.qnimeanbp_mean,
    b.qnimeanbp_var,
    b.qnimeanbp_stddev,
    b.qnimeanbp_range,
    b.qnimeanbp_perc25,
    b.qnimeanbp_perc50,
    b.qnimeanbp_perc75,
    b.hnimeanbp_min,
    b.hnimeanbp_max,
    b.hnimeanbp_mean,
    b.hnimeanbp_var,
    b.hnimeanbp_stddev,
    b.hnimeanbp_range,
    b.hnimeanbp_perc25,
    b.hnimeanbp_perc50,
    b.hnimeanbp_perc75
   FROM mimiciii.new_vari1 a
     LEFT JOIN mimiciii.new_0709_vari b ON a.subject_id = b.subject_id
     LEFT JOIN mimiciii.ventfirstday aa ON a.subject_id = aa.subject_id
  ORDER BY a.subject_id
WITH DATA;

ALTER TABLE mimiciii.new_0709_pat_with_characteristic_notcat
  OWNER TO postgres;
