-- This document was automatically created by the ADE-Manager tool of 3DCityDB (https://www.3dcitydb.org) on 2019-03-13 11:13:40 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop foreign keys ********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- ng_aircompressor 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_aircompressor
    DROP CONSTRAINT ng_aircompressor_fk;

-- -------------------------------------------------------------------- 
-- ng_building 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_building
    DROP CONSTRAINT ng_building_fk;

-- -------------------------------------------------------------------- 
-- ng_buildingu_to_address 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_buildingu_to_address
    DROP CONSTRAINT ng_buildin_to_addres_fk1;

ALTER TABLE ng_buildingu_to_address
    DROP CONSTRAINT ng_buildin_to_addres_fk2;

-- -------------------------------------------------------------------- 
-- ng_buildingunit 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_buildingunit
    DROP CONSTRAINT ng_buildingunit_fk;

ALTER TABLE ng_buildingunit
    DROP CONSTRAINT ng_buildi_usage_conta_fk;

-- -------------------------------------------------------------------- 
-- ng_chiller 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_chiller
    DROP CONSTRAINT ng_chiller_fk;

-- -------------------------------------------------------------------- 
-- ng_cityobject 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_cityobject
    DROP CONSTRAINT ng_cityobject_fk;

-- -------------------------------------------------------------------- 
-- ng_combinedheatpower 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_combinedheatpower
    DROP CONSTRAINT ng_combinedheatpower_fk;

-- -------------------------------------------------------------------- 
-- ng_construction 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_construction
    DROP CONSTRAINT ng_construction_fk;

ALTER TABLE ng_construction
    DROP CONSTRAINT ng_constr_build_aggre_fk;

ALTER TABLE ng_construction
    DROP CONSTRAINT ng_construct_basecons_fk;

-- -------------------------------------------------------------------- 
-- ng_construction_1 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_construction_1
    DROP CONSTRAINT ng_construction_fk_1;

ALTER TABLE ng_construction_1
    DROP CONSTRAINT ng_construct_servicel_fk;

ALTER TABLE ng_construction_1
    DROP CONSTRAINT ng_construct_opticalp_fk;

-- -------------------------------------------------------------------- 
-- ng_dailyschedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_dailyschedule
    DROP CONSTRAINT ng_dailysche_schedule_fk;

ALTER TABLE ng_dailyschedule
    DROP CONSTRAINT ng_dailys_perio_daily_fk;

-- -------------------------------------------------------------------- 
-- ng_dhwfacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_dhwfacilities
    DROP CONSTRAINT ng_dhwfacilities_fk;

-- -------------------------------------------------------------------- 
-- ng_dualvalueschedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_dualvalueschedule
    DROP CONSTRAINT ng_dualvalueschedule_fk;

-- -------------------------------------------------------------------- 
-- ng_emissivity 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_emissivity
    DROP CONSTRAINT ng_emissi_optic_emiss_fk;

-- -------------------------------------------------------------------- 
-- ng_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_emit_emit_to_ene_ise
    DROP CONSTRAINT ng_emi_emi_to_ene_ise_fk;

ALTER TABLE ng_emit_emit_to_ene_ise
    DROP CONSTRAINT eng_emi_emi_to_ene_is_fk_1;

-- -------------------------------------------------------------------- 
-- ng_emittersystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_emittersystem
    DROP CONSTRAINT ng_emittersystem_fk;

ALTER TABLE ng_emittersystem
    DROP CONSTRAINT ng_emittersy_thermale_fk;

-- -------------------------------------------------------------------- 
-- ng_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_ener_dist_to_ene_isd
    DROP CONSTRAINT ng_ene_dis_to_ene_isd_fk;

ALTER TABLE ng_ener_dist_to_ene_isd
    DROP CONSTRAINT eng_ene_dis_to_ene_is_fk_1;

-- -------------------------------------------------------------------- 
-- ng_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_ener_isst_to_sto_sto
    DROP CONSTRAINT ng_ene_iss_to_sto_sto_fk;

ALTER TABLE ng_ener_isst_to_sto_sto
    DROP CONSTRAINT eng_ene_iss_to_sto_st_fk_1;

-- -------------------------------------------------------------------- 
-- ng_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_ener_prov_to_ene_isp
    DROP CONSTRAINT ng_ene_pro_to_ene_isp_fk;

ALTER TABLE ng_ener_prov_to_ene_isp
    DROP CONSTRAINT eng_ene_pro_to_ene_is_fk_1;

-- -------------------------------------------------------------------- 
-- ng_energyconversionsyst 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energyconversionsyst
    DROP CONSTRAINT ng_energycon_objectcl_fk;

ALTER TABLE ng_energyconversionsyst
    DROP CONSTRAINT ng_energyconversionsy_fk;

-- -------------------------------------------------------------------- 
-- ng_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energyde_to_cityobje
    DROP CONSTRAINT ng_energyd_to_cityob_fk1;

ALTER TABLE ng_energyde_to_cityobje
    DROP CONSTRAINT ng_energyd_to_cityob_fk2;

-- -------------------------------------------------------------------- 
-- ng_energydemand 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energydemand
    DROP CONSTRAINT ng_energydemand_fk;

ALTER TABLE ng_energydemand
    DROP CONSTRAINT ng_energydem_energyam_fk;

ALTER TABLE ng_energydemand
    DROP CONSTRAINT ng_energy_cityo_deman_fk;

-- -------------------------------------------------------------------- 
-- ng_energydistributionsy 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energydistributionsy
    DROP CONSTRAINT ng_energydistribution_fk;

ALTER TABLE ng_energydistributionsy
    DROP CONSTRAINT ng_energydis_objectcl_fk;

-- -------------------------------------------------------------------- 
-- ng_energyflow 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energyflow
    DROP CONSTRAINT ng_energyflow_fk;

ALTER TABLE ng_energyflow
    DROP CONSTRAINT ng_energyflo_energyam_fk;

-- -------------------------------------------------------------------- 
-- ng_energyperformancecer 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energyperformancecer
    DROP CONSTRAINT ng_energy_build_energ_fk;

ALTER TABLE ng_energyperformancecer
    DROP CONSTRAINT ng_energ_build_ener_fk_1;

-- -------------------------------------------------------------------- 
-- ng_energysource 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energysource
    DROP CONSTRAINT ng_energysource_fk;

-- -------------------------------------------------------------------- 
-- ng_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energysy_to_cityobje
    DROP CONSTRAINT ng_energys_to_cityob_fk1;

ALTER TABLE ng_energysy_to_cityobje
    DROP CONSTRAINT ng_energys_to_cityob_fk2;

-- -------------------------------------------------------------------- 
-- ng_energysystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energysystem
    DROP CONSTRAINT ng_energysystem_fk;

ALTER TABLE ng_energysystem
    DROP CONSTRAINT ng_energysys_objectcl_fk;

ALTER TABLE ng_energysystem
    DROP CONSTRAINT ng_energysys_servicel_fk;

-- -------------------------------------------------------------------- 
-- ng_facilities 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_facilities
    DROP CONSTRAINT ng_facilitie_objectcl_fk;

ALTER TABLE ng_facilities
    DROP CONSTRAINT ng_facilities_fk;

ALTER TABLE ng_facilities
    DROP CONSTRAINT ng_facilitie_heatdiss_fk;

ALTER TABLE ng_facilities
    DROP CONSTRAINT ng_facili_usage_equip_fk;

ALTER TABLE ng_facilities
    DROP CONSTRAINT ng_facilitie_operatio_fk;

ALTER TABLE ng_facilities
    DROP CONSTRAINT ng_facili_build_equip_fk;

-- -------------------------------------------------------------------- 
-- ng_floorarea 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_floorarea
    DROP CONSTRAINT ng_floora_build_floor_fk;

ALTER TABLE ng_floorarea
    DROP CONSTRAINT ng_floora_therm_floor_fk;

ALTER TABLE ng_floorarea
    DROP CONSTRAINT ng_floora_usage_floor_fk;

ALTER TABLE ng_floorarea
    DROP CONSTRAINT ng_floor_build_floo_fk_1;

-- -------------------------------------------------------------------- 
-- ng_gas 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_gas
    DROP CONSTRAINT ng_gas_fk;

-- -------------------------------------------------------------------- 
-- ng_heatexchanger 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_heatexchanger
    DROP CONSTRAINT ng_heatexchanger_fk;

-- -------------------------------------------------------------------- 
-- ng_heatpump 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_heatpump
    DROP CONSTRAINT ng_heatpump_fk;

-- -------------------------------------------------------------------- 
-- ng_heightaboveground 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_heightaboveground
    DROP CONSTRAINT ng_height_build_heigh_fk;

-- -------------------------------------------------------------------- 
-- ng_household 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_household
    DROP CONSTRAINT ng_household_fk;

ALTER TABLE ng_household
    DROP CONSTRAINT ng_househ_occup_house_fk;

-- -------------------------------------------------------------------- 
-- ng_imagetexture 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_imagetexture
    DROP CONSTRAINT ng_imagetexture_fk;

-- -------------------------------------------------------------------- 
-- ng_irregulartimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_irregulartimeseries
    DROP CONSTRAINT ng_irregulartimeserie_fk;

-- -------------------------------------------------------------------- 
-- ng_irregulartimeseriesf 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_irregulartimeseriesf
    DROP CONSTRAINT ng_irregulartimeser_fk_1;

-- -------------------------------------------------------------------- 
-- ng_layer 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_layer
    DROP CONSTRAINT ng_layer_fk;

ALTER TABLE ng_layer
    DROP CONSTRAINT ng_layer_constr_layer_fk;

-- -------------------------------------------------------------------- 
-- ng_layercomponent 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_layercomponent
    DROP CONSTRAINT ng_layercomponent_fk;

ALTER TABLE ng_layercomponent
    DROP CONSTRAINT ng_layercomp_servicel_fk;

ALTER TABLE ng_layercomponent
    DROP CONSTRAINT ng_layerc_layer_layer_fk;

ALTER TABLE ng_layercomponent
    DROP CONSTRAINT ng_layercomp_material_fk;

-- -------------------------------------------------------------------- 
-- ng_material 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_material
    DROP CONSTRAINT ng_material_fk;

ALTER TABLE ng_material
    DROP CONSTRAINT ng_material_objectcla_fk;

ALTER TABLE ng_material
    DROP CONSTRAINT ng_material_imagetext_fk;

-- -------------------------------------------------------------------- 
-- ng_measurementpoint 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_measurementpoint
    DROP CONSTRAINT ng_measur_irreg_conta_fk;

-- -------------------------------------------------------------------- 
-- ng_mechanicalventilatio 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_mechanicalventilatio
    DROP CONSTRAINT ng_mechanicalventilat_fk;

-- -------------------------------------------------------------------- 
-- ng_occupants 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_occupants
    DROP CONSTRAINT ng_occupants_fk;

ALTER TABLE ng_occupants
    DROP CONSTRAINT ng_occupants_heatdiss_fk;

ALTER TABLE ng_occupants
    DROP CONSTRAINT ng_occupa_usage_occup_fk;

ALTER TABLE ng_occupants
    DROP CONSTRAINT ng_occupants_occupanc_fk;

ALTER TABLE ng_occupants
    DROP CONSTRAINT ng_occupa_build_occup_fk;

-- -------------------------------------------------------------------- 
-- ng_periodofyear 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_periodofyear
    DROP CONSTRAINT ng_period_sched_perio_fk;

-- -------------------------------------------------------------------- 
-- ng_photovoltaicsystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_photovoltaicsystem
    DROP CONSTRAINT ng_photovoltaicsystem_fk;

-- -------------------------------------------------------------------- 
-- ng_photovoltaicthermals 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_photovoltaicthermals
    DROP CONSTRAINT ng_photovoltaictherma_fk;

-- -------------------------------------------------------------------- 
-- ng_powerdistributionsys 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_powerdistributionsys
    DROP CONSTRAINT ng_powerdistributions_fk;

-- -------------------------------------------------------------------- 
-- ng_powerstoragesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_powerstoragesystem
    DROP CONSTRAINT ng_powerstoragesystem_fk;

-- -------------------------------------------------------------------- 
-- ng_reflectance 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_reflectance
    DROP CONSTRAINT ng_reflec_optic_refle_fk;

-- -------------------------------------------------------------------- 
-- ng_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_refurbishmentmeasure
    DROP CONSTRAINT ng_refurb_build_refur_fk;

ALTER TABLE ng_refurbishmentmeasure
    DROP CONSTRAINT ng_refurbishment_date_fk;

ALTER TABLE ng_refurbishmentmeasure
    DROP CONSTRAINT ng_refurb_therm_refur_fk;

-- -------------------------------------------------------------------- 
-- ng_regulartimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_regulartimeseries
    DROP CONSTRAINT ng_regulartimeseries_fk;

-- -------------------------------------------------------------------- 
-- ng_regulartimeseriesfil 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_regulartimeseriesfil
    DROP CONSTRAINT ng_regulartimeseriesf_fk;

-- -------------------------------------------------------------------- 
-- ng_schedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_schedule
    DROP CONSTRAINT ng_schedule_objectcla_fk;

ALTER TABLE ng_schedule
    DROP CONSTRAINT ng_schedule_fk;

ALTER TABLE ng_schedule
    DROP CONSTRAINT ng_schedule_timedepen_fk;

-- -------------------------------------------------------------------- 
-- ng_servicelife 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_servicelife
    DROP CONSTRAINT ng_servicelife_fk;

-- -------------------------------------------------------------------- 
-- ng_shadingtype 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_shadingtype
    DROP CONSTRAINT ng_shadingty_transmit_fk;

-- -------------------------------------------------------------------- 
-- ng_solarenergysystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_solarenergysystem
    DROP CONSTRAINT ng_solarenergysystem_fk;

ALTER TABLE ng_solarenergysystem
    DROP CONSTRAINT ng_solarener_objectcl_fk;

ALTER TABLE ng_solarenergysystem
    DROP CONSTRAINT ng_solarener_installe_fk;

ALTER TABLE ng_solarenergysystem
    DROP CONSTRAINT ng_solarene_install_fk_1;

ALTER TABLE ng_solarenergysystem
    DROP CONSTRAINT ng_solarener_surfaceg_fk;

-- -------------------------------------------------------------------- 
-- ng_solarthermalsystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_solarthermalsystem
    DROP CONSTRAINT ng_solarthermalsystem_fk;

-- -------------------------------------------------------------------- 
-- ng_solidmaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_solidmaterial
    DROP CONSTRAINT ng_solidmaterial_fk;

-- -------------------------------------------------------------------- 
-- ng_storagesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_storagesystem
    DROP CONSTRAINT ng_storagesystem_fk;

ALTER TABLE ng_storagesystem
    DROP CONSTRAINT ng_storagesy_objectcl_fk;

-- -------------------------------------------------------------------- 
-- ng_systemoperation 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_systemoperation
    DROP CONSTRAINT ng_systemoperation_fk;

ALTER TABLE ng_systemoperation
    DROP CONSTRAINT ng_systemope_operatio_fk;

ALTER TABLE ng_systemoperation
    DROP CONSTRAINT ng_systemo_energy_has_fk;

-- -------------------------------------------------------------------- 
-- ng_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_ther_deli_to_the_bou
    DROP CONSTRAINT ng_the_del_to_the_bou_fk;

ALTER TABLE ng_ther_deli_to_the_bou
    DROP CONSTRAINT eng_the_del_to_the_bo_fk_1;

-- -------------------------------------------------------------------- 
-- ng_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_therm_to_thema_surfa
    DROP CONSTRAINT ng_ther_to_them_surf_fk1;

ALTER TABLE ng_therm_to_thema_surfa
    DROP CONSTRAINT ng_ther_to_them_surf_fk2;

-- -------------------------------------------------------------------- 
-- ng_thermalboundary 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalboundary
    DROP CONSTRAINT ng_thermalboundary_fk;

ALTER TABLE ng_thermalboundary
    DROP CONSTRAINT ng_thermalbo_construc_fk;

ALTER TABLE ng_thermalboundary
    DROP CONSTRAINT ng_thermalbo_surfaceg_fk;

-- -------------------------------------------------------------------- 
-- ng_thermaldistributions 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermaldistributions
    DROP CONSTRAINT ng_thermaldistributio_fk;

-- -------------------------------------------------------------------- 
-- ng_thermalop_to_opening 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalop_to_opening
    DROP CONSTRAINT ng_thermal_to_openin_fk1;

ALTER TABLE ng_thermalop_to_opening
    DROP CONSTRAINT ng_thermal_to_openin_fk2;

-- -------------------------------------------------------------------- 
-- ng_thermalopening 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalopening
    DROP CONSTRAINT ng_thermalopening_fk;

ALTER TABLE ng_thermalopening
    DROP CONSTRAINT ng_thermalop_construc_fk;

ALTER TABLE ng_thermalopening
    DROP CONSTRAINT ng_thermalop_indoorsh_fk;

ALTER TABLE ng_thermalopening
    DROP CONSTRAINT ng_thermalop_outdoors_fk;

ALTER TABLE ng_thermalopening
    DROP CONSTRAINT ng_therma_therm_conta_fk;

ALTER TABLE ng_thermalopening
    DROP CONSTRAINT ng_thermalop_surfaceg_fk;

-- -------------------------------------------------------------------- 
-- ng_thermalstoragesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalstoragesystem
    DROP CONSTRAINT ng_thermalstoragesyst_fk;

-- -------------------------------------------------------------------- 
-- ng_thermalzone 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalzone
    DROP CONSTRAINT ng_thermalzone_fk;

ALTER TABLE ng_thermalzone
    DROP CONSTRAINT ng_therma_build_therm_fk;

ALTER TABLE ng_thermalzone
    DROP CONSTRAINT ng_thermalzo_volumege_fk;

-- -------------------------------------------------------------------- 
-- ng_thermalzone_to_room 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalzone_to_room
    DROP CONSTRAINT ng_thermalzo_to_room_fk1;

ALTER TABLE ng_thermalzone_to_room
    DROP CONSTRAINT ng_thermalzo_to_room_fk2;

-- -------------------------------------------------------------------- 
-- ng_timeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_timeseries
    DROP CONSTRAINT ng_timeseries_fk;

ALTER TABLE ng_timeseries
    DROP CONSTRAINT ng_timeserie_objectcl_fk;

-- -------------------------------------------------------------------- 
-- ng_transmittance 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_transmittance
    DROP CONSTRAINT ng_transm_optic_trans_fk;

-- -------------------------------------------------------------------- 
-- ng_usagezone 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_usagezone
    DROP CONSTRAINT ng_usagezone_fk;

ALTER TABLE ng_usagezone
    DROP CONSTRAINT ng_usagez_build_usage_fk;

ALTER TABLE ng_usagezone
    DROP CONSTRAINT ng_usagez_therm_conta_fk;

ALTER TABLE ng_usagezone
    DROP CONSTRAINT ng_usagezone_averagei_fk;

ALTER TABLE ng_usagezone
    DROP CONSTRAINT ng_usagezone_coolings_fk;

ALTER TABLE ng_usagezone
    DROP CONSTRAINT ng_usagezone_heatings_fk;

ALTER TABLE ng_usagezone
    DROP CONSTRAINT ng_usagezone_ventilat_fk;

ALTER TABLE ng_usagezone
    DROP CONSTRAINT ng_usagezone_volumege_fk;

-- -------------------------------------------------------------------- 
-- ng_volumetype 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_volumetype
    DROP CONSTRAINT ng_volume_build_volum_fk;

ALTER TABLE ng_volumetype
    DROP CONSTRAINT ng_volume_therm_volum_fk;

-- -------------------------------------------------------------------- 
-- ng_weatherdata 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_weatherdata
    DROP CONSTRAINT ng_weatherdata_fk;

ALTER TABLE ng_weatherdata
    DROP CONSTRAINT ng_weatherdata_values_fk;

ALTER TABLE ng_weatherdata
    DROP CONSTRAINT ng_weathe_cityo_weath_fk;

ALTER TABLE ng_weatherdata
    DROP CONSTRAINT ng_weathe_weath_param_fk;

-- -------------------------------------------------------------------- 
-- ng_weatherstation 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_weatherstation
    DROP CONSTRAINT ng_weatherstation_fk;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop tables *************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- ng_aircompressor 
-- -------------------------------------------------------------------- 
DROP TABLE ng_aircompressor;

-- -------------------------------------------------------------------- 
-- ng_building 
-- -------------------------------------------------------------------- 
DROP TABLE ng_building;

-- -------------------------------------------------------------------- 
-- ng_buildingu_to_address 
-- -------------------------------------------------------------------- 
DROP TABLE ng_buildingu_to_address;

-- -------------------------------------------------------------------- 
-- ng_buildingunit 
-- -------------------------------------------------------------------- 
DROP TABLE ng_buildingunit;

-- -------------------------------------------------------------------- 
-- ng_chiller 
-- -------------------------------------------------------------------- 
DROP TABLE ng_chiller;

-- -------------------------------------------------------------------- 
-- ng_cityobject 
-- -------------------------------------------------------------------- 
DROP TABLE ng_cityobject;

-- -------------------------------------------------------------------- 
-- ng_combinedheatpower 
-- -------------------------------------------------------------------- 
DROP TABLE ng_combinedheatpower;

-- -------------------------------------------------------------------- 
-- ng_construction 
-- -------------------------------------------------------------------- 
DROP TABLE ng_construction;

-- -------------------------------------------------------------------- 
-- ng_construction_1 
-- -------------------------------------------------------------------- 
DROP TABLE ng_construction_1;

-- -------------------------------------------------------------------- 
-- ng_dailyschedule 
-- -------------------------------------------------------------------- 
DROP TABLE ng_dailyschedule;

-- -------------------------------------------------------------------- 
-- ng_dateofevent 
-- -------------------------------------------------------------------- 
DROP TABLE ng_dateofevent;

-- -------------------------------------------------------------------- 
-- ng_dhwfacilities 
-- -------------------------------------------------------------------- 
DROP TABLE ng_dhwfacilities;

-- -------------------------------------------------------------------- 
-- ng_dualvalueschedule 
-- -------------------------------------------------------------------- 
DROP TABLE ng_dualvalueschedule;

-- -------------------------------------------------------------------- 
-- ng_emissivity 
-- -------------------------------------------------------------------- 
DROP TABLE ng_emissivity;

-- -------------------------------------------------------------------- 
-- ng_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
DROP TABLE ng_emit_emit_to_ene_ise;

-- -------------------------------------------------------------------- 
-- ng_emittersystem 
-- -------------------------------------------------------------------- 
DROP TABLE ng_emittersystem;

-- -------------------------------------------------------------------- 
-- ng_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
DROP TABLE ng_ener_dist_to_ene_isd;

-- -------------------------------------------------------------------- 
-- ng_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
DROP TABLE ng_ener_isst_to_sto_sto;

-- -------------------------------------------------------------------- 
-- ng_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
DROP TABLE ng_ener_prov_to_ene_isp;

-- -------------------------------------------------------------------- 
-- ng_energyconversionsyst 
-- -------------------------------------------------------------------- 
DROP TABLE ng_energyconversionsyst;

-- -------------------------------------------------------------------- 
-- ng_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
DROP TABLE ng_energyde_to_cityobje;

-- -------------------------------------------------------------------- 
-- ng_energydemand 
-- -------------------------------------------------------------------- 
DROP TABLE ng_energydemand;

-- -------------------------------------------------------------------- 
-- ng_energydistributionsy 
-- -------------------------------------------------------------------- 
DROP TABLE ng_energydistributionsy;

-- -------------------------------------------------------------------- 
-- ng_energyflow 
-- -------------------------------------------------------------------- 
DROP TABLE ng_energyflow;

-- -------------------------------------------------------------------- 
-- ng_energyperformancecer 
-- -------------------------------------------------------------------- 
DROP TABLE ng_energyperformancecer;

-- -------------------------------------------------------------------- 
-- ng_energysource 
-- -------------------------------------------------------------------- 
DROP TABLE ng_energysource;

-- -------------------------------------------------------------------- 
-- ng_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
DROP TABLE ng_energysy_to_cityobje;

-- -------------------------------------------------------------------- 
-- ng_energysystem 
-- -------------------------------------------------------------------- 
DROP TABLE ng_energysystem;

-- -------------------------------------------------------------------- 
-- ng_facilities 
-- -------------------------------------------------------------------- 
DROP TABLE ng_facilities;

-- -------------------------------------------------------------------- 
-- ng_floorarea 
-- -------------------------------------------------------------------- 
DROP TABLE ng_floorarea;

-- -------------------------------------------------------------------- 
-- ng_gas 
-- -------------------------------------------------------------------- 
DROP TABLE ng_gas;

-- -------------------------------------------------------------------- 
-- ng_heatexchanger 
-- -------------------------------------------------------------------- 
DROP TABLE ng_heatexchanger;

-- -------------------------------------------------------------------- 
-- ng_heatexchangetype 
-- -------------------------------------------------------------------- 
DROP TABLE ng_heatexchangetype;

-- -------------------------------------------------------------------- 
-- ng_heatpump 
-- -------------------------------------------------------------------- 
DROP TABLE ng_heatpump;

-- -------------------------------------------------------------------- 
-- ng_heightaboveground 
-- -------------------------------------------------------------------- 
DROP TABLE ng_heightaboveground;

-- -------------------------------------------------------------------- 
-- ng_household 
-- -------------------------------------------------------------------- 
DROP TABLE ng_household;

-- -------------------------------------------------------------------- 
-- ng_imagetexture 
-- -------------------------------------------------------------------- 
DROP TABLE ng_imagetexture;

-- -------------------------------------------------------------------- 
-- ng_irregulartimeseries 
-- -------------------------------------------------------------------- 
DROP TABLE ng_irregulartimeseries;

-- -------------------------------------------------------------------- 
-- ng_irregulartimeseriesf 
-- -------------------------------------------------------------------- 
DROP TABLE ng_irregulartimeseriesf;

-- -------------------------------------------------------------------- 
-- ng_layer 
-- -------------------------------------------------------------------- 
DROP TABLE ng_layer;

-- -------------------------------------------------------------------- 
-- ng_layercomponent 
-- -------------------------------------------------------------------- 
DROP TABLE ng_layercomponent;

-- -------------------------------------------------------------------- 
-- ng_material 
-- -------------------------------------------------------------------- 
DROP TABLE ng_material;

-- -------------------------------------------------------------------- 
-- ng_measurementpoint 
-- -------------------------------------------------------------------- 
DROP TABLE ng_measurementpoint;

-- -------------------------------------------------------------------- 
-- ng_mechanicalventilatio 
-- -------------------------------------------------------------------- 
DROP TABLE ng_mechanicalventilatio;

-- -------------------------------------------------------------------- 
-- ng_occupants 
-- -------------------------------------------------------------------- 
DROP TABLE ng_occupants;

-- -------------------------------------------------------------------- 
-- ng_opticalproperties 
-- -------------------------------------------------------------------- 
DROP TABLE ng_opticalproperties;

-- -------------------------------------------------------------------- 
-- ng_periodofyear 
-- -------------------------------------------------------------------- 
DROP TABLE ng_periodofyear;

-- -------------------------------------------------------------------- 
-- ng_photovoltaicsystem 
-- -------------------------------------------------------------------- 
DROP TABLE ng_photovoltaicsystem;

-- -------------------------------------------------------------------- 
-- ng_photovoltaicthermals 
-- -------------------------------------------------------------------- 
DROP TABLE ng_photovoltaicthermals;

-- -------------------------------------------------------------------- 
-- ng_powerdistributionsys 
-- -------------------------------------------------------------------- 
DROP TABLE ng_powerdistributionsys;

-- -------------------------------------------------------------------- 
-- ng_powerstoragesystem 
-- -------------------------------------------------------------------- 
DROP TABLE ng_powerstoragesystem;

-- -------------------------------------------------------------------- 
-- ng_reflectance 
-- -------------------------------------------------------------------- 
DROP TABLE ng_reflectance;

-- -------------------------------------------------------------------- 
-- ng_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
DROP TABLE ng_refurbishmentmeasure;

-- -------------------------------------------------------------------- 
-- ng_regulartimeseries 
-- -------------------------------------------------------------------- 
DROP TABLE ng_regulartimeseries;

-- -------------------------------------------------------------------- 
-- ng_regulartimeseriesfil 
-- -------------------------------------------------------------------- 
DROP TABLE ng_regulartimeseriesfil;

-- -------------------------------------------------------------------- 
-- ng_schedule 
-- -------------------------------------------------------------------- 
DROP TABLE ng_schedule;

-- -------------------------------------------------------------------- 
-- ng_servicelife 
-- -------------------------------------------------------------------- 
DROP TABLE ng_servicelife;

-- -------------------------------------------------------------------- 
-- ng_shadingtype 
-- -------------------------------------------------------------------- 
DROP TABLE ng_shadingtype;

-- -------------------------------------------------------------------- 
-- ng_solarenergysystem 
-- -------------------------------------------------------------------- 
DROP TABLE ng_solarenergysystem;

-- -------------------------------------------------------------------- 
-- ng_solarthermalsystem 
-- -------------------------------------------------------------------- 
DROP TABLE ng_solarthermalsystem;

-- -------------------------------------------------------------------- 
-- ng_solidmaterial 
-- -------------------------------------------------------------------- 
DROP TABLE ng_solidmaterial;

-- -------------------------------------------------------------------- 
-- ng_storagesystem 
-- -------------------------------------------------------------------- 
DROP TABLE ng_storagesystem;

-- -------------------------------------------------------------------- 
-- ng_systemoperation 
-- -------------------------------------------------------------------- 
DROP TABLE ng_systemoperation;

-- -------------------------------------------------------------------- 
-- ng_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
DROP TABLE ng_ther_deli_to_the_bou;

-- -------------------------------------------------------------------- 
-- ng_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
DROP TABLE ng_therm_to_thema_surfa;

-- -------------------------------------------------------------------- 
-- ng_thermalboundary 
-- -------------------------------------------------------------------- 
DROP TABLE ng_thermalboundary;

-- -------------------------------------------------------------------- 
-- ng_thermaldistributions 
-- -------------------------------------------------------------------- 
DROP TABLE ng_thermaldistributions;

-- -------------------------------------------------------------------- 
-- ng_thermalop_to_opening 
-- -------------------------------------------------------------------- 
DROP TABLE ng_thermalop_to_opening;

-- -------------------------------------------------------------------- 
-- ng_thermalopening 
-- -------------------------------------------------------------------- 
DROP TABLE ng_thermalopening;

-- -------------------------------------------------------------------- 
-- ng_thermalstoragesystem 
-- -------------------------------------------------------------------- 
DROP TABLE ng_thermalstoragesystem;

-- -------------------------------------------------------------------- 
-- ng_thermalzone 
-- -------------------------------------------------------------------- 
DROP TABLE ng_thermalzone;

-- -------------------------------------------------------------------- 
-- ng_thermalzone_to_room 
-- -------------------------------------------------------------------- 
DROP TABLE ng_thermalzone_to_room;

-- -------------------------------------------------------------------- 
-- ng_timeseries 
-- -------------------------------------------------------------------- 
DROP TABLE ng_timeseries;

-- -------------------------------------------------------------------- 
-- ng_timevaluesproperties 
-- -------------------------------------------------------------------- 
DROP TABLE ng_timevaluesproperties;

-- -------------------------------------------------------------------- 
-- ng_transmittance 
-- -------------------------------------------------------------------- 
DROP TABLE ng_transmittance;

-- -------------------------------------------------------------------- 
-- ng_usagezone 
-- -------------------------------------------------------------------- 
DROP TABLE ng_usagezone;

-- -------------------------------------------------------------------- 
-- ng_volumetype 
-- -------------------------------------------------------------------- 
DROP TABLE ng_volumetype;

-- -------------------------------------------------------------------- 
-- ng_weatherdata 
-- -------------------------------------------------------------------- 
DROP TABLE ng_weatherdata;

-- -------------------------------------------------------------------- 
-- ng_weatherstation 
-- -------------------------------------------------------------------- 
DROP TABLE ng_weatherstation;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop Sequences ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

DROP SEQUENCE ng_energyperformanc_seq;

DROP SEQUENCE ng_volumetype_seq;

DROP SEQUENCE ng_refurbishmentmea_seq;

DROP SEQUENCE ng_floorarea_seq;

DROP SEQUENCE ng_heightabovegroun_seq;

DROP SEQUENCE ng_dateofevent_seq;

DROP SEQUENCE ng_heatexchangetype_seq;

DROP SEQUENCE ng_shadingtype_seq;

DROP SEQUENCE ng_transmittance_seq;

DROP SEQUENCE ng_opticalpropertie_seq;

DROP SEQUENCE ng_emissivity_seq;

DROP SEQUENCE ng_reflectance_seq;

DROP SEQUENCE ng_timevaluesproper_seq;

DROP SEQUENCE ng_periodofyear_seq;

DROP SEQUENCE ng_dailyschedule_seq;

DROP SEQUENCE ng_measurementpoint_seq;
