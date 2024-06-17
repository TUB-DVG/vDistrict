-- This document was automatically created by the ADE-Manager tool of 3DCityDB (https://www.3dcitydb.org) on 2019-03-13 11:13:40 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop foreign keys ********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- engy_aircompressor 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_aircompressor
    DROP CONSTRAINT engy_aircompressor_fk;

-- -------------------------------------------------------------------- 
-- engy_building 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_building
    DROP CONSTRAINT engy_building_fk;

-- -------------------------------------------------------------------- 
-- engy_buildingu_to_address 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_buildingu_to_address
    DROP CONSTRAINT engy_buildin_to_addres_fk1;

ALTER TABLE engy_buildingu_to_address
    DROP CONSTRAINT engy_buildin_to_addres_fk2;

-- -------------------------------------------------------------------- 
-- engy_buildingunit 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_buildingunit
    DROP CONSTRAINT engy_buildingunit_fk;

ALTER TABLE engy_buildingunit
    DROP CONSTRAINT engy_buildi_usage_conta_fk;

-- -------------------------------------------------------------------- 
-- engy_chiller 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_chiller
    DROP CONSTRAINT engy_chiller_fk;

-- -------------------------------------------------------------------- 
-- engy_cityobject 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_cityobject
    DROP CONSTRAINT engy_cityobject_fk;

-- -------------------------------------------------------------------- 
-- engy_combinedheatpower 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_combinedheatpower
    DROP CONSTRAINT engy_combinedheatpower_fk;

-- -------------------------------------------------------------------- 
-- engy_construction 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_construction
    DROP CONSTRAINT engy_construction_fk;

ALTER TABLE engy_construction
    DROP CONSTRAINT engy_constr_build_aggre_fk;

ALTER TABLE engy_construction
    DROP CONSTRAINT engy_construct_basecons_fk;

-- -------------------------------------------------------------------- 
-- engy_construction_1 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_construction_1
    DROP CONSTRAINT engy_construction_fk_1;

ALTER TABLE engy_construction_1
    DROP CONSTRAINT engy_construct_servicel_fk;

ALTER TABLE engy_construction_1
    DROP CONSTRAINT engy_construct_opticalp_fk;

-- -------------------------------------------------------------------- 
-- engy_dailyschedule 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_dailyschedule
    DROP CONSTRAINT engy_dailysche_schedule_fk;

ALTER TABLE engy_dailyschedule
    DROP CONSTRAINT engy_dailys_perio_daily_fk;

-- -------------------------------------------------------------------- 
-- engy_dhwfacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_dhwfacilities
    DROP CONSTRAINT engy_dhwfacilities_fk;

-- -------------------------------------------------------------------- 
-- engy_dualvalueschedule 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_dualvalueschedule
    DROP CONSTRAINT engy_dualvalueschedule_fk;

-- -------------------------------------------------------------------- 
-- engy_emissivity 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_emissivity
    DROP CONSTRAINT engy_emissi_optic_emiss_fk;

-- -------------------------------------------------------------------- 
-- engy_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_emit_emit_to_ene_ise
    DROP CONSTRAINT engy_emi_emi_to_ene_ise_fk;

ALTER TABLE engy_emit_emit_to_ene_ise
    DROP CONSTRAINT eng_emi_emi_to_ene_is_fk_1;

-- -------------------------------------------------------------------- 
-- engy_emittersystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_emittersystem
    DROP CONSTRAINT engy_emittersystem_fk;

ALTER TABLE engy_emittersystem
    DROP CONSTRAINT engy_emittersy_thermale_fk;

-- -------------------------------------------------------------------- 
-- engy_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_ener_dist_to_ene_isd
    DROP CONSTRAINT engy_ene_dis_to_ene_isd_fk;

ALTER TABLE engy_ener_dist_to_ene_isd
    DROP CONSTRAINT eng_ene_dis_to_ene_is_fk_1;

-- -------------------------------------------------------------------- 
-- engy_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_ener_isst_to_sto_sto
    DROP CONSTRAINT engy_ene_iss_to_sto_sto_fk;

ALTER TABLE engy_ener_isst_to_sto_sto
    DROP CONSTRAINT eng_ene_iss_to_sto_st_fk_1;

-- -------------------------------------------------------------------- 
-- engy_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_ener_prov_to_ene_isp
    DROP CONSTRAINT engy_ene_pro_to_ene_isp_fk;

ALTER TABLE engy_ener_prov_to_ene_isp
    DROP CONSTRAINT eng_ene_pro_to_ene_is_fk_1;

-- -------------------------------------------------------------------- 
-- engy_energyconversionsyst 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energyconversionsyst
    DROP CONSTRAINT engy_energycon_objectcl_fk;

ALTER TABLE engy_energyconversionsyst
    DROP CONSTRAINT engy_energyconversionsy_fk;

-- -------------------------------------------------------------------- 
-- engy_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energyde_to_cityobje
    DROP CONSTRAINT engy_energyd_to_cityob_fk1;

ALTER TABLE engy_energyde_to_cityobje
    DROP CONSTRAINT engy_energyd_to_cityob_fk2;

-- -------------------------------------------------------------------- 
-- engy_energydemand 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energydemand
    DROP CONSTRAINT engy_energydemand_fk;

ALTER TABLE engy_energydemand
    DROP CONSTRAINT engy_energydem_energyam_fk;

ALTER TABLE engy_energydemand
    DROP CONSTRAINT engy_energy_cityo_deman_fk;

-- -------------------------------------------------------------------- 
-- engy_energydistributionsy 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energydistributionsy
    DROP CONSTRAINT engy_energydistribution_fk;

ALTER TABLE engy_energydistributionsy
    DROP CONSTRAINT engy_energydis_objectcl_fk;

-- -------------------------------------------------------------------- 
-- engy_energyflow 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energyflow
    DROP CONSTRAINT engy_energyflow_fk;

ALTER TABLE engy_energyflow
    DROP CONSTRAINT engy_energyflo_energyam_fk;

-- -------------------------------------------------------------------- 
-- engy_energyperformancecer 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energyperformancecer
    DROP CONSTRAINT engy_energy_build_energ_fk;

ALTER TABLE engy_energyperformancecer
    DROP CONSTRAINT engy_energ_build_ener_fk_1;

-- -------------------------------------------------------------------- 
-- engy_energysource 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energysource
    DROP CONSTRAINT engy_energysource_fk;

-- -------------------------------------------------------------------- 
-- engy_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energysy_to_cityobje
    DROP CONSTRAINT engy_energys_to_cityob_fk1;

ALTER TABLE engy_energysy_to_cityobje
    DROP CONSTRAINT engy_energys_to_cityob_fk2;

-- -------------------------------------------------------------------- 
-- engy_energysystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energysystem
    DROP CONSTRAINT engy_energysystem_fk;

ALTER TABLE engy_energysystem
    DROP CONSTRAINT engy_energysys_objectcl_fk;

ALTER TABLE engy_energysystem
    DROP CONSTRAINT engy_energysys_servicel_fk;

-- -------------------------------------------------------------------- 
-- engy_facilities 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_facilities
    DROP CONSTRAINT engy_facilitie_objectcl_fk;

ALTER TABLE engy_facilities
    DROP CONSTRAINT engy_facilities_fk;

ALTER TABLE engy_facilities
    DROP CONSTRAINT engy_facilitie_heatdiss_fk;

ALTER TABLE engy_facilities
    DROP CONSTRAINT engy_facili_usage_equip_fk;

ALTER TABLE engy_facilities
    DROP CONSTRAINT engy_facilitie_operatio_fk;

ALTER TABLE engy_facilities
    DROP CONSTRAINT engy_facili_build_equip_fk;

-- -------------------------------------------------------------------- 
-- engy_floorarea 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_floorarea
    DROP CONSTRAINT engy_floora_build_floor_fk;

ALTER TABLE engy_floorarea
    DROP CONSTRAINT engy_floora_therm_floor_fk;

ALTER TABLE engy_floorarea
    DROP CONSTRAINT engy_floora_usage_floor_fk;

ALTER TABLE engy_floorarea
    DROP CONSTRAINT engy_floor_build_floo_fk_1;

-- -------------------------------------------------------------------- 
-- engy_gas 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_gas
    DROP CONSTRAINT engy_gas_fk;

-- -------------------------------------------------------------------- 
-- engy_heatexchanger 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_heatexchanger
    DROP CONSTRAINT engy_heatexchanger_fk;

-- -------------------------------------------------------------------- 
-- engy_heatpump 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_heatpump
    DROP CONSTRAINT engy_heatpump_fk;

-- -------------------------------------------------------------------- 
-- engy_heightaboveground 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_heightaboveground
    DROP CONSTRAINT engy_height_build_heigh_fk;

-- -------------------------------------------------------------------- 
-- engy_household 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_household
    DROP CONSTRAINT engy_household_fk;

ALTER TABLE engy_household
    DROP CONSTRAINT engy_househ_occup_house_fk;

-- -------------------------------------------------------------------- 
-- engy_imagetexture 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_imagetexture
    DROP CONSTRAINT engy_imagetexture_fk;

-- -------------------------------------------------------------------- 
-- engy_irregulartimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_irregulartimeseries
    DROP CONSTRAINT engy_irregulartimeserie_fk;

-- -------------------------------------------------------------------- 
-- engy_irregulartimeseriesf 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_irregulartimeseriesf
    DROP CONSTRAINT engy_irregulartimeser_fk_1;

-- -------------------------------------------------------------------- 
-- engy_layer 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_layer
    DROP CONSTRAINT engy_layer_fk;

ALTER TABLE engy_layer
    DROP CONSTRAINT engy_layer_constr_layer_fk;

-- -------------------------------------------------------------------- 
-- engy_layercomponent 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_layercomponent
    DROP CONSTRAINT engy_layercomponent_fk;

ALTER TABLE engy_layercomponent
    DROP CONSTRAINT engy_layercomp_servicel_fk;

ALTER TABLE engy_layercomponent
    DROP CONSTRAINT engy_layerc_layer_layer_fk;

ALTER TABLE engy_layercomponent
    DROP CONSTRAINT engy_layercomp_material_fk;

-- -------------------------------------------------------------------- 
-- engy_material 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_material
    DROP CONSTRAINT engy_material_fk;

ALTER TABLE engy_material
    DROP CONSTRAINT engy_material_objectcla_fk;

ALTER TABLE engy_material
    DROP CONSTRAINT engy_material_imagetext_fk;

-- -------------------------------------------------------------------- 
-- engy_measurementpoint 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_measurementpoint
    DROP CONSTRAINT engy_measur_irreg_conta_fk;

-- -------------------------------------------------------------------- 
-- engy_mechanicalventilatio 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_mechanicalventilatio
    DROP CONSTRAINT engy_mechanicalventilat_fk;

-- -------------------------------------------------------------------- 
-- engy_occupants 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_occupants
    DROP CONSTRAINT engy_occupants_fk;

ALTER TABLE engy_occupants
    DROP CONSTRAINT engy_occupants_heatdiss_fk;

ALTER TABLE engy_occupants
    DROP CONSTRAINT engy_occupa_usage_occup_fk;

ALTER TABLE engy_occupants
    DROP CONSTRAINT engy_occupants_occupanc_fk;

ALTER TABLE engy_occupants
    DROP CONSTRAINT engy_occupa_build_occup_fk;

-- -------------------------------------------------------------------- 
-- engy_periodofyear 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_periodofyear
    DROP CONSTRAINT engy_period_sched_perio_fk;

-- -------------------------------------------------------------------- 
-- engy_photovoltaicsystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_photovoltaicsystem
    DROP CONSTRAINT engy_photovoltaicsystem_fk;

-- -------------------------------------------------------------------- 
-- engy_photovoltaicthermals 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_photovoltaicthermals
    DROP CONSTRAINT engy_photovoltaictherma_fk;

-- -------------------------------------------------------------------- 
-- engy_powerdistributionsys 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_powerdistributionsys
    DROP CONSTRAINT engy_powerdistributions_fk;

-- -------------------------------------------------------------------- 
-- engy_powerstoragesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_powerstoragesystem
    DROP CONSTRAINT engy_powerstoragesystem_fk;

-- -------------------------------------------------------------------- 
-- engy_reflectance 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_reflectance
    DROP CONSTRAINT engy_reflec_optic_refle_fk;

-- -------------------------------------------------------------------- 
-- engy_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_refurbishmentmeasure
    DROP CONSTRAINT engy_refurb_build_refur_fk;

ALTER TABLE engy_refurbishmentmeasure
    DROP CONSTRAINT engy_refurbishment_date_fk;

ALTER TABLE engy_refurbishmentmeasure
    DROP CONSTRAINT engy_refurb_therm_refur_fk;

-- -------------------------------------------------------------------- 
-- engy_regulartimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_regulartimeseries
    DROP CONSTRAINT engy_regulartimeseries_fk;

-- -------------------------------------------------------------------- 
-- engy_regulartimeseriesfil 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_regulartimeseriesfil
    DROP CONSTRAINT engy_regulartimeseriesf_fk;

-- -------------------------------------------------------------------- 
-- engy_schedule 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_schedule
    DROP CONSTRAINT engy_schedule_objectcla_fk;

ALTER TABLE engy_schedule
    DROP CONSTRAINT engy_schedule_fk;

ALTER TABLE engy_schedule
    DROP CONSTRAINT engy_schedule_timedepen_fk;

-- -------------------------------------------------------------------- 
-- engy_servicelife 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_servicelife
    DROP CONSTRAINT engy_servicelife_fk;

-- -------------------------------------------------------------------- 
-- engy_shadingtype 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_shadingtype
    DROP CONSTRAINT engy_shadingty_transmit_fk;

-- -------------------------------------------------------------------- 
-- engy_solarenergysystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_solarenergysystem
    DROP CONSTRAINT engy_solarenergysystem_fk;

ALTER TABLE engy_solarenergysystem
    DROP CONSTRAINT engy_solarener_objectcl_fk;

ALTER TABLE engy_solarenergysystem
    DROP CONSTRAINT engy_solarener_installe_fk;

ALTER TABLE engy_solarenergysystem
    DROP CONSTRAINT engy_solarene_install_fk_1;

ALTER TABLE engy_solarenergysystem
    DROP CONSTRAINT engy_solarener_surfaceg_fk;

-- -------------------------------------------------------------------- 
-- engy_solarthermalsystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_solarthermalsystem
    DROP CONSTRAINT engy_solarthermalsystem_fk;

-- -------------------------------------------------------------------- 
-- engy_solidmaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_solidmaterial
    DROP CONSTRAINT engy_solidmaterial_fk;

-- -------------------------------------------------------------------- 
-- engy_storagesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_storagesystem
    DROP CONSTRAINT engy_storagesystem_fk;

ALTER TABLE engy_storagesystem
    DROP CONSTRAINT engy_storagesy_objectcl_fk;

-- -------------------------------------------------------------------- 
-- engy_systemoperation 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_systemoperation
    DROP CONSTRAINT engy_systemoperation_fk;

ALTER TABLE engy_systemoperation
    DROP CONSTRAINT engy_systemope_operatio_fk;

ALTER TABLE engy_systemoperation
    DROP CONSTRAINT engy_systemo_energy_has_fk;

-- -------------------------------------------------------------------- 
-- engy_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_ther_deli_to_the_bou
    DROP CONSTRAINT engy_the_del_to_the_bou_fk;

ALTER TABLE engy_ther_deli_to_the_bou
    DROP CONSTRAINT eng_the_del_to_the_bo_fk_1;

-- -------------------------------------------------------------------- 
-- engy_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_therm_to_thema_surfa
    DROP CONSTRAINT engy_ther_to_them_surf_fk1;

ALTER TABLE engy_therm_to_thema_surfa
    DROP CONSTRAINT engy_ther_to_them_surf_fk2;

-- -------------------------------------------------------------------- 
-- engy_thermalboundary 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalboundary
    DROP CONSTRAINT engy_thermalboundary_fk;

ALTER TABLE engy_thermalboundary
    DROP CONSTRAINT engy_thermalbo_construc_fk;

ALTER TABLE engy_thermalboundary
    DROP CONSTRAINT engy_thermalbo_surfaceg_fk;

-- -------------------------------------------------------------------- 
-- engy_thermaldistributions 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermaldistributions
    DROP CONSTRAINT engy_thermaldistributio_fk;

-- -------------------------------------------------------------------- 
-- engy_thermalop_to_opening 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalop_to_opening
    DROP CONSTRAINT engy_thermal_to_openin_fk1;

ALTER TABLE engy_thermalop_to_opening
    DROP CONSTRAINT engy_thermal_to_openin_fk2;

-- -------------------------------------------------------------------- 
-- engy_thermalopening 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalopening
    DROP CONSTRAINT engy_thermalopening_fk;

ALTER TABLE engy_thermalopening
    DROP CONSTRAINT engy_thermalop_construc_fk;

ALTER TABLE engy_thermalopening
    DROP CONSTRAINT engy_thermalop_indoorsh_fk;

ALTER TABLE engy_thermalopening
    DROP CONSTRAINT engy_thermalop_outdoors_fk;

ALTER TABLE engy_thermalopening
    DROP CONSTRAINT engy_therma_therm_conta_fk;

ALTER TABLE engy_thermalopening
    DROP CONSTRAINT engy_thermalop_surfaceg_fk;

-- -------------------------------------------------------------------- 
-- engy_thermalstoragesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalstoragesystem
    DROP CONSTRAINT engy_thermalstoragesyst_fk;

-- -------------------------------------------------------------------- 
-- engy_thermalzone 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalzone
    DROP CONSTRAINT engy_thermalzone_fk;

ALTER TABLE engy_thermalzone
    DROP CONSTRAINT engy_therma_build_therm_fk;

ALTER TABLE engy_thermalzone
    DROP CONSTRAINT engy_thermalzo_volumege_fk;

-- -------------------------------------------------------------------- 
-- engy_thermalzone_to_room 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalzone_to_room
    DROP CONSTRAINT engy_thermalzo_to_room_fk1;

ALTER TABLE engy_thermalzone_to_room
    DROP CONSTRAINT engy_thermalzo_to_room_fk2;

-- -------------------------------------------------------------------- 
-- engy_timeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_timeseries
    DROP CONSTRAINT engy_timeseries_fk;

ALTER TABLE engy_timeseries
    DROP CONSTRAINT engy_timeserie_objectcl_fk;

-- -------------------------------------------------------------------- 
-- engy_transmittance 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_transmittance
    DROP CONSTRAINT engy_transm_optic_trans_fk;

-- -------------------------------------------------------------------- 
-- engy_usagezone 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_usagezone
    DROP CONSTRAINT engy_usagezone_fk;

ALTER TABLE engy_usagezone
    DROP CONSTRAINT engy_usagez_build_usage_fk;

ALTER TABLE engy_usagezone
    DROP CONSTRAINT engy_usagez_therm_conta_fk;

ALTER TABLE engy_usagezone
    DROP CONSTRAINT engy_usagezone_averagei_fk;

ALTER TABLE engy_usagezone
    DROP CONSTRAINT engy_usagezone_coolings_fk;

ALTER TABLE engy_usagezone
    DROP CONSTRAINT engy_usagezone_heatings_fk;

ALTER TABLE engy_usagezone
    DROP CONSTRAINT engy_usagezone_ventilat_fk;

ALTER TABLE engy_usagezone
    DROP CONSTRAINT engy_usagezone_volumege_fk;

-- -------------------------------------------------------------------- 
-- engy_volumetype 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_volumetype
    DROP CONSTRAINT engy_volume_build_volum_fk;

ALTER TABLE engy_volumetype
    DROP CONSTRAINT engy_volume_therm_volum_fk;

-- -------------------------------------------------------------------- 
-- engy_weatherdata 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_weatherdata
    DROP CONSTRAINT engy_weatherdata_fk;

ALTER TABLE engy_weatherdata
    DROP CONSTRAINT engy_weatherdata_values_fk;

ALTER TABLE engy_weatherdata
    DROP CONSTRAINT engy_weathe_cityo_weath_fk;

ALTER TABLE engy_weatherdata
    DROP CONSTRAINT engy_weathe_weath_param_fk;

-- -------------------------------------------------------------------- 
-- engy_weatherstation 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_weatherstation
    DROP CONSTRAINT engy_weatherstation_fk;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop tables *************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- engy_aircompressor 
-- -------------------------------------------------------------------- 
DROP TABLE engy_aircompressor;

-- -------------------------------------------------------------------- 
-- engy_building 
-- -------------------------------------------------------------------- 
DROP TABLE engy_building;

-- -------------------------------------------------------------------- 
-- engy_buildingu_to_address 
-- -------------------------------------------------------------------- 
DROP TABLE engy_buildingu_to_address;

-- -------------------------------------------------------------------- 
-- engy_buildingunit 
-- -------------------------------------------------------------------- 
DROP TABLE engy_buildingunit;

-- -------------------------------------------------------------------- 
-- engy_chiller 
-- -------------------------------------------------------------------- 
DROP TABLE engy_chiller;

-- -------------------------------------------------------------------- 
-- engy_cityobject 
-- -------------------------------------------------------------------- 
DROP TABLE engy_cityobject;

-- -------------------------------------------------------------------- 
-- engy_combinedheatpower 
-- -------------------------------------------------------------------- 
DROP TABLE engy_combinedheatpower;

-- -------------------------------------------------------------------- 
-- engy_construction 
-- -------------------------------------------------------------------- 
DROP TABLE engy_construction;

-- -------------------------------------------------------------------- 
-- engy_construction_1 
-- -------------------------------------------------------------------- 
DROP TABLE engy_construction_1;

-- -------------------------------------------------------------------- 
-- engy_dailyschedule 
-- -------------------------------------------------------------------- 
DROP TABLE engy_dailyschedule;

-- -------------------------------------------------------------------- 
-- engy_dateofevent 
-- -------------------------------------------------------------------- 
DROP TABLE engy_dateofevent;

-- -------------------------------------------------------------------- 
-- engy_dhwfacilities 
-- -------------------------------------------------------------------- 
DROP TABLE engy_dhwfacilities;

-- -------------------------------------------------------------------- 
-- engy_dualvalueschedule 
-- -------------------------------------------------------------------- 
DROP TABLE engy_dualvalueschedule;

-- -------------------------------------------------------------------- 
-- engy_emissivity 
-- -------------------------------------------------------------------- 
DROP TABLE engy_emissivity;

-- -------------------------------------------------------------------- 
-- engy_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
DROP TABLE engy_emit_emit_to_ene_ise;

-- -------------------------------------------------------------------- 
-- engy_emittersystem 
-- -------------------------------------------------------------------- 
DROP TABLE engy_emittersystem;

-- -------------------------------------------------------------------- 
-- engy_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
DROP TABLE engy_ener_dist_to_ene_isd;

-- -------------------------------------------------------------------- 
-- engy_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
DROP TABLE engy_ener_isst_to_sto_sto;

-- -------------------------------------------------------------------- 
-- engy_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
DROP TABLE engy_ener_prov_to_ene_isp;

-- -------------------------------------------------------------------- 
-- engy_energyconversionsyst 
-- -------------------------------------------------------------------- 
DROP TABLE engy_energyconversionsyst;

-- -------------------------------------------------------------------- 
-- engy_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
DROP TABLE engy_energyde_to_cityobje;

-- -------------------------------------------------------------------- 
-- engy_energydemand 
-- -------------------------------------------------------------------- 
DROP TABLE engy_energydemand;

-- -------------------------------------------------------------------- 
-- engy_energydistributionsy 
-- -------------------------------------------------------------------- 
DROP TABLE engy_energydistributionsy;

-- -------------------------------------------------------------------- 
-- engy_energyflow 
-- -------------------------------------------------------------------- 
DROP TABLE engy_energyflow;

-- -------------------------------------------------------------------- 
-- engy_energyperformancecer 
-- -------------------------------------------------------------------- 
DROP TABLE engy_energyperformancecer;

-- -------------------------------------------------------------------- 
-- engy_energysource 
-- -------------------------------------------------------------------- 
DROP TABLE engy_energysource;

-- -------------------------------------------------------------------- 
-- engy_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
DROP TABLE engy_energysy_to_cityobje;

-- -------------------------------------------------------------------- 
-- engy_energysystem 
-- -------------------------------------------------------------------- 
DROP TABLE engy_energysystem;

-- -------------------------------------------------------------------- 
-- engy_facilities 
-- -------------------------------------------------------------------- 
DROP TABLE engy_facilities;

-- -------------------------------------------------------------------- 
-- engy_floorarea 
-- -------------------------------------------------------------------- 
DROP TABLE engy_floorarea;

-- -------------------------------------------------------------------- 
-- engy_gas 
-- -------------------------------------------------------------------- 
DROP TABLE engy_gas;

-- -------------------------------------------------------------------- 
-- engy_heatexchanger 
-- -------------------------------------------------------------------- 
DROP TABLE engy_heatexchanger;

-- -------------------------------------------------------------------- 
-- engy_heatexchangetype 
-- -------------------------------------------------------------------- 
DROP TABLE engy_heatexchangetype;

-- -------------------------------------------------------------------- 
-- engy_heatpump 
-- -------------------------------------------------------------------- 
DROP TABLE engy_heatpump;

-- -------------------------------------------------------------------- 
-- engy_heightaboveground 
-- -------------------------------------------------------------------- 
DROP TABLE engy_heightaboveground;

-- -------------------------------------------------------------------- 
-- engy_household 
-- -------------------------------------------------------------------- 
DROP TABLE engy_household;

-- -------------------------------------------------------------------- 
-- engy_imagetexture 
-- -------------------------------------------------------------------- 
DROP TABLE engy_imagetexture;

-- -------------------------------------------------------------------- 
-- engy_irregulartimeseries 
-- -------------------------------------------------------------------- 
DROP TABLE engy_irregulartimeseries;

-- -------------------------------------------------------------------- 
-- engy_irregulartimeseriesf 
-- -------------------------------------------------------------------- 
DROP TABLE engy_irregulartimeseriesf;

-- -------------------------------------------------------------------- 
-- engy_layer 
-- -------------------------------------------------------------------- 
DROP TABLE engy_layer;

-- -------------------------------------------------------------------- 
-- engy_layercomponent 
-- -------------------------------------------------------------------- 
DROP TABLE engy_layercomponent;

-- -------------------------------------------------------------------- 
-- engy_material 
-- -------------------------------------------------------------------- 
DROP TABLE engy_material;

-- -------------------------------------------------------------------- 
-- engy_measurementpoint 
-- -------------------------------------------------------------------- 
DROP TABLE engy_measurementpoint;

-- -------------------------------------------------------------------- 
-- engy_mechanicalventilatio 
-- -------------------------------------------------------------------- 
DROP TABLE engy_mechanicalventilatio;

-- -------------------------------------------------------------------- 
-- engy_occupants 
-- -------------------------------------------------------------------- 
DROP TABLE engy_occupants;

-- -------------------------------------------------------------------- 
-- engy_opticalproperties 
-- -------------------------------------------------------------------- 
DROP TABLE engy_opticalproperties;

-- -------------------------------------------------------------------- 
-- engy_periodofyear 
-- -------------------------------------------------------------------- 
DROP TABLE engy_periodofyear;

-- -------------------------------------------------------------------- 
-- engy_photovoltaicsystem 
-- -------------------------------------------------------------------- 
DROP TABLE engy_photovoltaicsystem;

-- -------------------------------------------------------------------- 
-- engy_photovoltaicthermals 
-- -------------------------------------------------------------------- 
DROP TABLE engy_photovoltaicthermals;

-- -------------------------------------------------------------------- 
-- engy_powerdistributionsys 
-- -------------------------------------------------------------------- 
DROP TABLE engy_powerdistributionsys;

-- -------------------------------------------------------------------- 
-- engy_powerstoragesystem 
-- -------------------------------------------------------------------- 
DROP TABLE engy_powerstoragesystem;

-- -------------------------------------------------------------------- 
-- engy_reflectance 
-- -------------------------------------------------------------------- 
DROP TABLE engy_reflectance;

-- -------------------------------------------------------------------- 
-- engy_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
DROP TABLE engy_refurbishmentmeasure;

-- -------------------------------------------------------------------- 
-- engy_regulartimeseries 
-- -------------------------------------------------------------------- 
DROP TABLE engy_regulartimeseries;

-- -------------------------------------------------------------------- 
-- engy_regulartimeseriesfil 
-- -------------------------------------------------------------------- 
DROP TABLE engy_regulartimeseriesfil;

-- -------------------------------------------------------------------- 
-- engy_schedule 
-- -------------------------------------------------------------------- 
DROP TABLE engy_schedule;

-- -------------------------------------------------------------------- 
-- engy_servicelife 
-- -------------------------------------------------------------------- 
DROP TABLE engy_servicelife;

-- -------------------------------------------------------------------- 
-- engy_shadingtype 
-- -------------------------------------------------------------------- 
DROP TABLE engy_shadingtype;

-- -------------------------------------------------------------------- 
-- engy_solarenergysystem 
-- -------------------------------------------------------------------- 
DROP TABLE engy_solarenergysystem;

-- -------------------------------------------------------------------- 
-- engy_solarthermalsystem 
-- -------------------------------------------------------------------- 
DROP TABLE engy_solarthermalsystem;

-- -------------------------------------------------------------------- 
-- engy_solidmaterial 
-- -------------------------------------------------------------------- 
DROP TABLE engy_solidmaterial;

-- -------------------------------------------------------------------- 
-- engy_storagesystem 
-- -------------------------------------------------------------------- 
DROP TABLE engy_storagesystem;

-- -------------------------------------------------------------------- 
-- engy_systemoperation 
-- -------------------------------------------------------------------- 
DROP TABLE engy_systemoperation;

-- -------------------------------------------------------------------- 
-- engy_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
DROP TABLE engy_ther_deli_to_the_bou;

-- -------------------------------------------------------------------- 
-- engy_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
DROP TABLE engy_therm_to_thema_surfa;

-- -------------------------------------------------------------------- 
-- engy_thermalboundary 
-- -------------------------------------------------------------------- 
DROP TABLE engy_thermalboundary;

-- -------------------------------------------------------------------- 
-- engy_thermaldistributions 
-- -------------------------------------------------------------------- 
DROP TABLE engy_thermaldistributions;

-- -------------------------------------------------------------------- 
-- engy_thermalop_to_opening 
-- -------------------------------------------------------------------- 
DROP TABLE engy_thermalop_to_opening;

-- -------------------------------------------------------------------- 
-- engy_thermalopening 
-- -------------------------------------------------------------------- 
DROP TABLE engy_thermalopening;

-- -------------------------------------------------------------------- 
-- engy_thermalstoragesystem 
-- -------------------------------------------------------------------- 
DROP TABLE engy_thermalstoragesystem;

-- -------------------------------------------------------------------- 
-- engy_thermalzone 
-- -------------------------------------------------------------------- 
DROP TABLE engy_thermalzone;

-- -------------------------------------------------------------------- 
-- engy_thermalzone_to_room 
-- -------------------------------------------------------------------- 
DROP TABLE engy_thermalzone_to_room;

-- -------------------------------------------------------------------- 
-- engy_timeseries 
-- -------------------------------------------------------------------- 
DROP TABLE engy_timeseries;

-- -------------------------------------------------------------------- 
-- engy_timevaluesproperties 
-- -------------------------------------------------------------------- 
DROP TABLE engy_timevaluesproperties;

-- -------------------------------------------------------------------- 
-- engy_transmittance 
-- -------------------------------------------------------------------- 
DROP TABLE engy_transmittance;

-- -------------------------------------------------------------------- 
-- engy_usagezone 
-- -------------------------------------------------------------------- 
DROP TABLE engy_usagezone;

-- -------------------------------------------------------------------- 
-- engy_volumetype 
-- -------------------------------------------------------------------- 
DROP TABLE engy_volumetype;

-- -------------------------------------------------------------------- 
-- engy_weatherdata 
-- -------------------------------------------------------------------- 
DROP TABLE engy_weatherdata;

-- -------------------------------------------------------------------- 
-- engy_weatherstation 
-- -------------------------------------------------------------------- 
DROP TABLE engy_weatherstation;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop Sequences ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

DROP SEQUENCE engy_energyperformanc_seq;

DROP SEQUENCE engy_volumetype_seq;

DROP SEQUENCE engy_refurbishmentmea_seq;

DROP SEQUENCE engy_floorarea_seq;

DROP SEQUENCE engy_heightabovegroun_seq;

DROP SEQUENCE engy_dateofevent_seq;

DROP SEQUENCE engy_heatexchangetype_seq;

DROP SEQUENCE engy_shadingtype_seq;

DROP SEQUENCE engy_transmittance_seq;

DROP SEQUENCE engy_opticalpropertie_seq;

DROP SEQUENCE engy_emissivity_seq;

DROP SEQUENCE engy_reflectance_seq;

DROP SEQUENCE engy_timevaluesproper_seq;

DROP SEQUENCE engy_periodofyear_seq;

DROP SEQUENCE engy_dailyschedule_seq;

DROP SEQUENCE engy_measurementpoint_seq;
