-- This document was automatically created by the ADE-Manager tool of 3DCityDB (https://www.3dcitydb.org) on 2019-03-13 11:13:40 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create tables ************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- engy_aircompressor 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_aircompressor
(
    id INTEGER NOT NULL,
    compressortype VARCHAR2(1000),
    pressure NUMBER,
    pressure_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_building 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_building
(
    id INTEGER NOT NULL,
    buildingtype VARCHAR2(1000),
    buildingtype_codespace VARCHAR2(1000),
    constructionweight VARCHAR2(1000),
    islandmarked NUMBER,
    referencepoint MDSYS.SDO_GEOMETRY,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_buildingu_to_address 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_buildingu_to_address
(
    address_id INTEGER NOT NULL,
    buildingunit_id INTEGER NOT NULL,
    PRIMARY KEY (address_id, buildingunit_id)
);

-- -------------------------------------------------------------------- 
-- engy_buildingunit 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_buildingunit
(
    id INTEGER NOT NULL,
    numberofrooms INTEGER,
    ownername VARCHAR2(1000),
    ownershiptype VARCHAR2(1000),
    ownershiptype_codespace VARCHAR2(1000),
    usagezone_contains_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_chiller 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_chiller
(
    id INTEGER NOT NULL,
    compressortype VARCHAR2(1000),
    condensationtype VARCHAR2(1000),
    refrigerant VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_cityobject 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_cityobject
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_combinedheatpower 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_combinedheatpower
(
    id INTEGER NOT NULL,
    electricalefficiency NUMBER,
    electricalefficiency_uom VARCHAR2(1000),
    technologytype VARCHAR2(1000),
    thermalefficiency NUMBER,
    thermalefficiency_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_construction 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_construction
(
    id INTEGER NOT NULL,
    baseconstruction_id INTEGER,
    building_aggregatedbuildi_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_construction_1 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_construction_1
(
    id INTEGER NOT NULL,
    opticalproperties_id INTEGER,
    servicelife_id INTEGER,
    uvalue NUMBER,
    uvalue_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_dailyschedule 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_dailyschedule
(
    id INTEGER NOT NULL,
    daytype VARCHAR2(1000),
    periodofyear_dailyschedul_id INTEGER,
    schedule_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_dateofevent 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_dateofevent
(
    id INTEGER NOT NULL,
    instant VARCHAR2(1000),
    instant_calendareraname VARCHAR2(1000),
    instant_frame VARCHAR2(1000),
    instant_indeterminatepositio VARCHAR2(1000),
    timeperiodprop_beginposition TIMESTAMP,
    timeperiodproper_endposition TIMESTAMP,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_dhwfacilities 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_dhwfacilities
(
    id INTEGER NOT NULL,
    numberofbaths INTEGER,
    numberofshowers INTEGER,
    numberofwashbasins INTEGER,
    waterstoragevolume NUMBER,
    waterstoragevolume_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_dualvalueschedule 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_dualvalueschedule
(
    id INTEGER NOT NULL,
    idlevalue NUMBER,
    idlevalue_uom VARCHAR2(1000),
    usagedaysperyear NUMBER,
    usagehoursperday NUMBER,
    usagevalue NUMBER,
    usagevalue_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_emissivity 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_emissivity
(
    id INTEGER NOT NULL,
    fraction NUMBER,
    fraction_uom VARCHAR2(1000),
    opticalpropert_emissivity_id INTEGER,
    surface VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_emit_emit_to_ene_ise
(
    emittersystem_emitts_id INTEGER NOT NULL,
    energyflow_isemittedby_id INTEGER NOT NULL,
    PRIMARY KEY (emittersystem_emitts_id, energyflow_isemittedby_id)
);

-- -------------------------------------------------------------------- 
-- engy_emittersystem 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_emittersystem
(
    id INTEGER NOT NULL,
    emittertype VARCHAR2(1000),
    installedpower NUMBER,
    installedpower_uom VARCHAR2(1000),
    thermalexchange_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_ener_dist_to_ene_isd
(
    energydistrib_distributes_id INTEGER NOT NULL,
    energyflow_isdistributedb_id INTEGER NOT NULL,
    PRIMARY KEY (energydistrib_distributes_id, energyflow_isdistributedb_id)
);

-- -------------------------------------------------------------------- 
-- engy_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_ener_isst_to_sto_sto
(
    energyflow_isstoredby_id INTEGER NOT NULL,
    storagesystem_stores_id INTEGER NOT NULL,
    PRIMARY KEY (energyflow_isstoredby_id, storagesystem_stores_id)
);

-- -------------------------------------------------------------------- 
-- engy_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_ener_prov_to_ene_isp
(
    energyconversion_provides_id INTEGER NOT NULL,
    energyflow_isprovidedby_id INTEGER NOT NULL,
    PRIMARY KEY (energyconversion_provides_id, energyflow_isprovidedby_id)
);

-- -------------------------------------------------------------------- 
-- engy_energyconversionsyst 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_energyconversionsyst
(
    id INTEGER NOT NULL,
    efficiencyindicator VARCHAR2(1000),
    hascondensation NUMBER,
    installedpower NUMBER,
    installedpower_uom VARCHAR2(1000),
    nominalefficiency NUMBER,
    nominalefficiency_uom VARCHAR2(1000),
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_energyde_to_cityobje
(
    cityobject_id INTEGER NOT NULL,
    energydemand_id INTEGER NOT NULL,
    PRIMARY KEY (cityobject_id, energydemand_id)
);

-- -------------------------------------------------------------------- 
-- engy_energydemand 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_energydemand
(
    id INTEGER NOT NULL,
    cityobject_demands_id INTEGER,
    enduse VARCHAR2(1000),
    energyamount_id INTEGER,
    energycarriertype VARCHAR2(1000),
    energycarriertype_codespace VARCHAR2(1000),
    maximumload NUMBER,
    maximumload_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_energydistributionsy 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_energydistributionsy
(
    id INTEGER NOT NULL,
    distributionperimeter VARCHAR2(1000),
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_energyflow 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_energyflow
(
    id INTEGER NOT NULL,
    energyamount_id INTEGER,
    energycarriertype VARCHAR2(1000),
    energycarriertype_codespace VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_energyperformancecer 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_energyperformancecer
(
    id INTEGER NOT NULL,
    building_energyperformanc_id INTEGER,
    buildingunit_energyperfor_id INTEGER,
    certificationid VARCHAR2(1000),
    name VARCHAR2(1000),
    rating VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_energysource 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_energysource
(
    id INTEGER NOT NULL,
    co2emissionfactor NUMBER,
    co2emissionfactor_uom VARCHAR2(1000),
    energydensity NUMBER,
    energydensity_uom VARCHAR2(1000),
    primaryenergyfactor NUMBER,
    primaryenergyfactor_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_energysy_to_cityobje
(
    cityobject_id INTEGER NOT NULL,
    energysystem_id INTEGER NOT NULL,
    PRIMARY KEY (cityobject_id, energysystem_id)
);

-- -------------------------------------------------------------------- 
-- engy_energysystem 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_energysystem
(
    id INTEGER NOT NULL,
    model VARCHAR2(1000),
    numberofdevices INTEGER,
    objectclass_id INTEGER,
    servicelife_id INTEGER,
    yearofmanufacure DATE,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_facilities 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_facilities
(
    id INTEGER NOT NULL,
    buildingunit_equippedwith_id INTEGER,
    electricalpower NUMBER,
    electricalpower_1 NUMBER,
    electricalpower_uom VARCHAR2(1000),
    electricalpower_uom_1 VARCHAR2(1000),
    heatdissipation_id INTEGER,
    objectclass_id INTEGER,
    operationschedule_id INTEGER,
    usagezone_equippedwith_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_floorarea 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_floorarea
(
    id INTEGER NOT NULL,
    building_floorarea_id INTEGER,
    buildingunit_floorarea_id INTEGER,
    thermalzone_floorarea_id INTEGER,
    type VARCHAR2(1000),
    usagezone_floorarea_id INTEGER,
    value NUMBER,
    value_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_gas 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_gas
(
    id INTEGER NOT NULL,
    isventilated NUMBER,
    rvalue NUMBER,
    rvalue_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_heatexchanger 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_heatexchanger
(
    id INTEGER NOT NULL,
    networkid VARCHAR2(1000),
    networknodeid VARCHAR2(1000),
    primaryheatsupplier VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_heatexchangetype 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_heatexchangetype
(
    id INTEGER NOT NULL,
    convectivefraction NUMBER,
    convectivefraction_uom VARCHAR2(1000),
    latentfraction NUMBER,
    latentfraction_uom VARCHAR2(1000),
    radiantfraction NUMBER,
    radiantfraction_uom VARCHAR2(1000),
    totalvalue NUMBER,
    totalvalue_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_heatpump 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_heatpump
(
    id INTEGER NOT NULL,
    copoperationtemperature NUMBER,
    copoperationtemperature_uom VARCHAR2(1000),
    copsourcetemperature NUMBER,
    copsourcetemperature_uom VARCHAR2(1000),
    heatsource VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_heightaboveground 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_heightaboveground
(
    id INTEGER NOT NULL,
    building_heightabovegroun_id INTEGER,
    heightreference VARCHAR2(1000),
    value NUMBER,
    value_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_household 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_household
(
    id INTEGER NOT NULL,
    householdtype VARCHAR2(1000),
    occupants_household_id INTEGER,
    residencetype VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_imagetexture 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_imagetexture
(
    id INTEGER NOT NULL,
    repeats NUMBER,
    repeatt NUMBER,
    url VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_irregulartimeseries 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_irregulartimeseries
(
    id INTEGER NOT NULL,
    uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_irregulartimeseriesf 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_irregulartimeseriesf
(
    id INTEGER NOT NULL,
    decimalsymbol VARCHAR2(1000),
    fieldseparator VARCHAR2(1000),
    file_ VARCHAR2(1000),
    numberofheaderlines INTEGER,
    recordseparator VARCHAR2(1000),
    timecolumnnumber INTEGER,
    uom VARCHAR2(1000),
    valuecolumnnumber INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_layer 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_layer
(
    id INTEGER NOT NULL,
    construction_layer_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_layercomponent 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_layercomponent
(
    id INTEGER NOT NULL,
    areafraction NUMBER,
    areafraction_uom VARCHAR2(1000),
    layer_layercomponent_id INTEGER,
    material_id INTEGER,
    servicelife_id INTEGER,
    thickness NUMBER,
    thickness_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_material 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_material
(
    id INTEGER NOT NULL,
    imagetexture_id INTEGER,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_measurementpoint 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_measurementpoint
(
    id INTEGER NOT NULL,
    irregulartimeser_contains_id INTEGER,
    time VARCHAR2(1000),
    time_calendareraname VARCHAR2(1000),
    time_frame VARCHAR2(1000),
    time_indeterminateposition VARCHAR2(1000),
    value NUMBER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_mechanicalventilatio 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_mechanicalventilatio
(
    id INTEGER NOT NULL,
    hasheatrecovery NUMBER,
    recuperationfactor NUMBER,
    recuperationfactor_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_occupants 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_occupants
(
    id INTEGER NOT NULL,
    buildingunit_occupiedby_id INTEGER,
    heatdissipation_id INTEGER,
    numberofoccupants INTEGER,
    occupancyrate_id INTEGER,
    occupanttype VARCHAR2(1000),
    occupanttype_codespace VARCHAR2(1000),
    usagezone_occupiedby_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_opticalproperties 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_opticalproperties
(
    id INTEGER NOT NULL,
    glazingratio NUMBER,
    glazingratio_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_periodofyear 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_periodofyear
(
    id INTEGER NOT NULL,
    schedule_periodofyear_id INTEGER,
    timeperiodprop_beginposition TIMESTAMP,
    timeperiodproper_endposition TIMESTAMP,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_photovoltaicsystem 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_photovoltaicsystem
(
    id INTEGER NOT NULL,
    celltype VARCHAR2(1000),
    modulearea NUMBER,
    modulearea_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_photovoltaicthermals 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_photovoltaicthermals
(
    id INTEGER NOT NULL,
    aperturearea NUMBER,
    aperturearea_uom VARCHAR2(1000),
    celltype VARCHAR2(1000),
    collectortype VARCHAR2(1000),
    linearheatlosscoefficient NUMBER,
    modulearea NUMBER,
    modulearea_uom VARCHAR2(1000),
    opticalefficiency NUMBER,
    opticalefficiency_uom VARCHAR2(1000),
    quadraticheatlosscoefficient NUMBER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_powerdistributionsys 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_powerdistributionsys
(
    id INTEGER NOT NULL,
    current_ NUMBER,
    current_uom VARCHAR2(1000),
    voltage NUMBER,
    voltage_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_powerstoragesystem 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_powerstoragesystem
(
    id INTEGER NOT NULL,
    batterytechnology VARCHAR2(1000),
    powercapacity NUMBER,
    powercapacity_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_reflectance 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_reflectance
(
    id INTEGER NOT NULL,
    fraction NUMBER,
    fraction_uom VARCHAR2(1000),
    opticalproper_reflectance_id INTEGER,
    surface VARCHAR2(1000),
    wavelengthrange VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_refurbishmentmeasure
(
    id INTEGER NOT NULL,
    building_refurbishmentmea_id INTEGER,
    date_id INTEGER,
    description VARCHAR2(1000),
    level_ VARCHAR2(1000),
    level_codespace VARCHAR2(1000),
    thermalbound_refurbishmen_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_regulartimeseries 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_regulartimeseries
(
    id INTEGER NOT NULL,
    timeinterval NUMBER,
    timeinterval_factor INTEGER,
    timeinterval_radix INTEGER,
    timeinterval_unit VARCHAR2(1000),
    timeperiodprop_beginposition TIMESTAMP,
    timeperiodproper_endposition TIMESTAMP,
    values_ CLOB,
    values_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_regulartimeseriesfil 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_regulartimeseriesfil
(
    id INTEGER NOT NULL,
    decimalsymbol VARCHAR2(1000),
    fieldseparator VARCHAR2(1000),
    file_ VARCHAR2(1000),
    numberofheaderlines INTEGER,
    recordseparator VARCHAR2(1000),
    timeinterval NUMBER,
    timeinterval_factor INTEGER,
    timeinterval_radix INTEGER,
    timeinterval_unit VARCHAR2(1000),
    timeperiodprop_beginposition TIMESTAMP,
    timeperiodproper_endposition TIMESTAMP,
    uom VARCHAR2(1000),
    valuecolumnnumber INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_schedule 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_schedule
(
    id INTEGER NOT NULL,
    averagevalue NUMBER,
    averagevalue_uom VARCHAR2(1000),
    objectclass_id INTEGER,
    timedependingvalues_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_servicelife 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_servicelife
(
    id INTEGER NOT NULL,
    lifeexpectancy NUMBER,
    lifeexpectancy_factor INTEGER,
    lifeexpectancy_radix INTEGER,
    lifeexpectancy_unit VARCHAR2(1000),
    mainmaintenanceinterv_factor INTEGER,
    mainmaintenanceinterva_radix INTEGER,
    mainmaintenanceinterval NUMBER,
    mainmaintenanceinterval_unit VARCHAR2(1000),
    startoflife VARCHAR2(1000),
    startoflife_calendareraname VARCHAR2(1000),
    startoflife_frame VARCHAR2(1000),
    startoflife_indeterminatepos VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_shadingtype 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_shadingtype
(
    id INTEGER NOT NULL,
    maximumcoverratio NUMBER,
    maximumcoverratio_uom VARCHAR2(1000),
    name VARCHAR2(1000),
    transmittance_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_solarenergysystem 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_solarenergysystem
(
    id INTEGER NOT NULL,
    installedonboundarysurfac_id INTEGER,
    installedonbuildinginstal_id INTEGER,
    objectclass_id INTEGER,
    surfacegeometry_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_solarthermalsystem 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_solarthermalsystem
(
    id INTEGER NOT NULL,
    a1 NUMBER,
    a2 NUMBER,
    aperturearea NUMBER,
    aperturearea_uom VARCHAR2(1000),
    collectortype VARCHAR2(1000),
    eta0 NUMBER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_solidmaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_solidmaterial
(
    id INTEGER NOT NULL,
    conductivity NUMBER,
    conductivity_uom VARCHAR2(1000),
    density NUMBER,
    density_uom VARCHAR2(1000),
    embodiedcarbon NUMBER,
    embodiedcarbon_uom VARCHAR2(1000),
    embodiedenergy NUMBER,
    embodiedenergy_uom VARCHAR2(1000),
    permeance NUMBER,
    permeance_uom VARCHAR2(1000),
    porosity NUMBER,
    porosity_uom VARCHAR2(1000),
    specificheat NUMBER,
    specificheat_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_storagesystem 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_storagesystem
(
    id INTEGER NOT NULL,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_systemoperation 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_systemoperation
(
    id INTEGER NOT NULL,
    enduse VARCHAR2(1000),
    energyconversionsyste_has_id INTEGER,
    operationtime_id INTEGER,
    yearlyglobalefficiency NUMBER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_ther_deli_to_the_bou
(
    thermalboundary_delimits_id INTEGER NOT NULL,
    thermalzone_boundedby_id INTEGER NOT NULL,
    PRIMARY KEY (thermalboundary_delimits_id, thermalzone_boundedby_id)
);

-- -------------------------------------------------------------------- 
-- engy_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_therm_to_thema_surfa
(
    thematic_surface_id INTEGER NOT NULL,
    thermalboundary_id INTEGER NOT NULL,
    PRIMARY KEY (thematic_surface_id, thermalboundary_id)
);

-- -------------------------------------------------------------------- 
-- engy_thermalboundary 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_thermalboundary
(
    id INTEGER NOT NULL,
    area NUMBER,
    area_uom VARCHAR2(1000),
    azimuth NUMBER,
    azimuth_uom VARCHAR2(1000),
    construction_id INTEGER,
    inclination NUMBER,
    inclination_uom VARCHAR2(1000),
    surfacegeometry_id INTEGER,
    thermalboundarytype VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_thermaldistributions 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_thermaldistributions
(
    id INTEGER NOT NULL,
    iscirculation NUMBER,
    medium VARCHAR2(1000),
    nominalflow NUMBER,
    nominalflow_uom VARCHAR2(1000),
    returntemperature NUMBER,
    returntemperature_uom VARCHAR2(1000),
    supplytemperature NUMBER,
    supplytemperature_uom VARCHAR2(1000),
    thermallossesfactor NUMBER,
    thermallossesfactor_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_thermalop_to_opening 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_thermalop_to_opening
(
    opening_id INTEGER NOT NULL,
    thermalopening_id INTEGER NOT NULL,
    PRIMARY KEY (opening_id, thermalopening_id)
);

-- -------------------------------------------------------------------- 
-- engy_thermalopening 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_thermalopening
(
    id INTEGER NOT NULL,
    area NUMBER,
    area_uom VARCHAR2(1000),
    construction_id INTEGER,
    indoorshading_id INTEGER,
    openableratio NUMBER,
    openableratio_uom VARCHAR2(1000),
    outdoorshading_id INTEGER,
    surfacegeometry_id INTEGER,
    thermalboundary_contains_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_thermalstoragesystem 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_thermalstoragesystem
(
    id INTEGER NOT NULL,
    medium VARCHAR2(1000),
    preparationtemperature NUMBER,
    preparationtemperature_uom VARCHAR2(1000),
    thermallossesfactor NUMBER,
    thermallossesfactor_uom VARCHAR2(1000),
    volume NUMBER,
    volume_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_thermalzone 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_thermalzone
(
    id INTEGER NOT NULL,
    additionalthermalbridgeu_uom VARCHAR2(1000),
    additionalthermalbridgeuvalu NUMBER,
    building_thermalzone_id INTEGER,
    effectivethermalcapacity NUMBER,
    effectivethermalcapacity_uom VARCHAR2(1000),
    indirectlyheatedarearati_uom VARCHAR2(1000),
    indirectlyheatedarearatio NUMBER,
    infiltrationrate NUMBER,
    infiltrationrate_uom VARCHAR2(1000),
    iscooled NUMBER,
    isheated NUMBER,
    volumegeometry_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_thermalzone_to_room 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_thermalzone_to_room
(
    room_id INTEGER NOT NULL,
    thermalzone_id INTEGER NOT NULL,
    PRIMARY KEY (room_id, thermalzone_id)
);

-- -------------------------------------------------------------------- 
-- engy_timeseries 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_timeseries
(
    id INTEGER NOT NULL,
    objectclass_id INTEGER,
    timevaluesprop_acquisitionme VARCHAR2(1000),
    timevaluesprop_interpolation VARCHAR2(1000),
    timevaluesprop_qualitydescri VARCHAR2(1000),
    timevaluesprop_thematicdescr VARCHAR2(1000),
    timevaluespropertiest_source VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_timevaluesproperties 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_timevaluesproperties
(
    id INTEGER NOT NULL,
    acquisitionmethod VARCHAR2(1000),
    interpolationtype VARCHAR2(1000),
    qualitydescription VARCHAR2(1000),
    source VARCHAR2(1000),
    thematicdescription VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_transmittance 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_transmittance
(
    id INTEGER NOT NULL,
    fraction NUMBER,
    fraction_uom VARCHAR2(1000),
    opticalprope_transmittanc_id INTEGER,
    wavelengthrange VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_usagezone 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_usagezone
(
    id INTEGER NOT NULL,
    averageinternalgains_id INTEGER,
    building_usagezone_id INTEGER,
    coolingschedule_id INTEGER,
    heatingschedule_id INTEGER,
    thermalzone_contains_id INTEGER,
    usagezonetype VARCHAR2(1000),
    usagezonetype_codespace VARCHAR2(1000),
    usedfloors VARCHAR2(1000),
    ventilationschedule_id INTEGER,
    volumegeometry_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_volumetype 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_volumetype
(
    id INTEGER NOT NULL,
    building_volume_id INTEGER,
    thermalzone_volume_id INTEGER,
    type VARCHAR2(1000),
    value NUMBER,
    value_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_weatherdata 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_weatherdata
(
    id INTEGER NOT NULL,
    cityobject_weatherdata_id INTEGER,
    position MDSYS.SDO_GEOMETRY,
    values_id INTEGER,
    weatherdatatype VARCHAR2(1000),
    weatherstation_parameter_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- engy_weatherstation 
-- -------------------------------------------------------------------- 
CREATE TABLE engy_weatherstation
(
    id INTEGER NOT NULL,
    genericapplicationpropertyof CLOB,
    position MDSYS.SDO_GEOMETRY,
    stationname VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create foreign keys ******************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- engy_aircompressor 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_aircompressor ADD CONSTRAINT engy_aircompressor_fk FOREIGN KEY (id)
REFERENCES engy_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- engy_building 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_building ADD CONSTRAINT engy_building_fk FOREIGN KEY (id)
REFERENCES building (id);

-- -------------------------------------------------------------------- 
-- engy_buildingu_to_address 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_buildingu_to_address ADD CONSTRAINT engy_buildin_to_addres_fk1 FOREIGN KEY (buildingunit_id)
REFERENCES engy_buildingunit (id)
ON DELETE CASCADE;

ALTER TABLE engy_buildingu_to_address ADD CONSTRAINT engy_buildin_to_addres_fk2 FOREIGN KEY (address_id)
REFERENCES address (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_buildingunit 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_buildingunit ADD CONSTRAINT engy_buildingunit_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_buildingunit ADD CONSTRAINT engy_buildi_usage_conta_fk FOREIGN KEY (usagezone_contains_id)
REFERENCES engy_usagezone (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_chiller 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_chiller ADD CONSTRAINT engy_chiller_fk FOREIGN KEY (id)
REFERENCES engy_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- engy_cityobject 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_cityobject ADD CONSTRAINT engy_cityobject_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- engy_combinedheatpower 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_combinedheatpower ADD CONSTRAINT engy_combinedheatpower_fk FOREIGN KEY (id)
REFERENCES engy_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- engy_construction 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_construction ADD CONSTRAINT engy_construction_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_construction ADD CONSTRAINT engy_constr_build_aggre_fk FOREIGN KEY (building_aggregatedbuildi_id)
REFERENCES engy_building (id)
ON DELETE SET NULL;

ALTER TABLE engy_construction ADD CONSTRAINT engy_construct_basecons_fk FOREIGN KEY (baseconstruction_id)
REFERENCES engy_construction_1 (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_construction_1 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_construction_1 ADD CONSTRAINT engy_construction_fk_1 FOREIGN KEY (id)
REFERENCES engy_construction (id);

ALTER TABLE engy_construction_1 ADD CONSTRAINT engy_construct_servicel_fk FOREIGN KEY (servicelife_id)
REFERENCES engy_servicelife (id)
ON DELETE SET NULL;

ALTER TABLE engy_construction_1 ADD CONSTRAINT engy_construct_opticalp_fk FOREIGN KEY (opticalproperties_id)
REFERENCES engy_opticalproperties (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_dailyschedule 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_dailyschedule ADD CONSTRAINT engy_dailysche_schedule_fk FOREIGN KEY (schedule_id)
REFERENCES engy_timeseries (id)
ON DELETE SET NULL;

ALTER TABLE engy_dailyschedule ADD CONSTRAINT engy_dailys_perio_daily_fk FOREIGN KEY (periodofyear_dailyschedul_id)
REFERENCES engy_periodofyear (id);

-- -------------------------------------------------------------------- 
-- engy_dhwfacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_dhwfacilities ADD CONSTRAINT engy_dhwfacilities_fk FOREIGN KEY (id)
REFERENCES engy_facilities (id);

-- -------------------------------------------------------------------- 
-- engy_dualvalueschedule 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_dualvalueschedule ADD CONSTRAINT engy_dualvalueschedule_fk FOREIGN KEY (id)
REFERENCES engy_schedule (id);

-- -------------------------------------------------------------------- 
-- engy_emissivity 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_emissivity ADD CONSTRAINT engy_emissi_optic_emiss_fk FOREIGN KEY (opticalpropert_emissivity_id)
REFERENCES engy_opticalproperties (id);

-- -------------------------------------------------------------------- 
-- engy_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_emit_emit_to_ene_ise ADD CONSTRAINT engy_emi_emi_to_ene_ise_fk FOREIGN KEY (emittersystem_emitts_id)
REFERENCES engy_emittersystem (id)
ON DELETE CASCADE;

ALTER TABLE engy_emit_emit_to_ene_ise ADD CONSTRAINT eng_emi_emi_to_ene_is_fk_1 FOREIGN KEY (energyflow_isemittedby_id)
REFERENCES engy_energyflow (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_emittersystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_emittersystem ADD CONSTRAINT engy_emittersystem_fk FOREIGN KEY (id)
REFERENCES engy_energysystem (id);

ALTER TABLE engy_emittersystem ADD CONSTRAINT engy_emittersy_thermale_fk FOREIGN KEY (thermalexchange_id)
REFERENCES engy_heatexchangetype (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_ener_dist_to_ene_isd ADD CONSTRAINT engy_ene_dis_to_ene_isd_fk FOREIGN KEY (energydistrib_distributes_id)
REFERENCES engy_energydistributionsy (id)
ON DELETE CASCADE;

ALTER TABLE engy_ener_dist_to_ene_isd ADD CONSTRAINT eng_ene_dis_to_ene_is_fk_1 FOREIGN KEY (energyflow_isdistributedb_id)
REFERENCES engy_energyflow (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_ener_isst_to_sto_sto ADD CONSTRAINT engy_ene_iss_to_sto_sto_fk FOREIGN KEY (energyflow_isstoredby_id)
REFERENCES engy_energyflow (id)
ON DELETE CASCADE;

ALTER TABLE engy_ener_isst_to_sto_sto ADD CONSTRAINT eng_ene_iss_to_sto_st_fk_1 FOREIGN KEY (storagesystem_stores_id)
REFERENCES engy_storagesystem (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_ener_prov_to_ene_isp ADD CONSTRAINT engy_ene_pro_to_ene_isp_fk FOREIGN KEY (energyconversion_provides_id)
REFERENCES engy_energyconversionsyst (id)
ON DELETE CASCADE;

ALTER TABLE engy_ener_prov_to_ene_isp ADD CONSTRAINT eng_ene_pro_to_ene_is_fk_1 FOREIGN KEY (energyflow_isprovidedby_id)
REFERENCES engy_energyflow (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_energyconversionsyst 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energyconversionsyst ADD CONSTRAINT engy_energycon_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE engy_energyconversionsyst ADD CONSTRAINT engy_energyconversionsy_fk FOREIGN KEY (id)
REFERENCES engy_energysystem (id);

-- -------------------------------------------------------------------- 
-- engy_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energyde_to_cityobje ADD CONSTRAINT engy_energyd_to_cityob_fk1 FOREIGN KEY (energydemand_id)
REFERENCES engy_energydemand (id)
ON DELETE CASCADE;

ALTER TABLE engy_energyde_to_cityobje ADD CONSTRAINT engy_energyd_to_cityob_fk2 FOREIGN KEY (cityobject_id)
REFERENCES cityobject (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_energydemand 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energydemand ADD CONSTRAINT engy_energydemand_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_energydemand ADD CONSTRAINT engy_energydem_energyam_fk FOREIGN KEY (energyamount_id)
REFERENCES engy_timeseries (id)
ON DELETE SET NULL;

ALTER TABLE engy_energydemand ADD CONSTRAINT engy_energy_cityo_deman_fk FOREIGN KEY (cityobject_demands_id)
REFERENCES engy_cityobject (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_energydistributionsy 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energydistributionsy ADD CONSTRAINT engy_energydistribution_fk FOREIGN KEY (id)
REFERENCES engy_energysystem (id);

ALTER TABLE engy_energydistributionsy ADD CONSTRAINT engy_energydis_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- engy_energyflow 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energyflow ADD CONSTRAINT engy_energyflow_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_energyflow ADD CONSTRAINT engy_energyflo_energyam_fk FOREIGN KEY (energyamount_id)
REFERENCES engy_timeseries (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_energyperformancecer 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energyperformancecer ADD CONSTRAINT engy_energy_build_energ_fk FOREIGN KEY (building_energyperformanc_id)
REFERENCES engy_building (id);

ALTER TABLE engy_energyperformancecer ADD CONSTRAINT engy_energ_build_ener_fk_1 FOREIGN KEY (buildingunit_energyperfor_id)
REFERENCES engy_buildingunit (id);

-- -------------------------------------------------------------------- 
-- engy_energysource 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energysource ADD CONSTRAINT engy_energysource_fk FOREIGN KEY (id)
REFERENCES engy_energyflow (id);

-- -------------------------------------------------------------------- 
-- engy_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energysy_to_cityobje ADD CONSTRAINT engy_energys_to_cityob_fk1 FOREIGN KEY (energysystem_id)
REFERENCES engy_energysystem (id)
ON DELETE CASCADE;

ALTER TABLE engy_energysy_to_cityobje ADD CONSTRAINT engy_energys_to_cityob_fk2 FOREIGN KEY (cityobject_id)
REFERENCES cityobject (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_energysystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_energysystem ADD CONSTRAINT engy_energysystem_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_energysystem ADD CONSTRAINT engy_energysys_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE engy_energysystem ADD CONSTRAINT engy_energysys_servicel_fk FOREIGN KEY (servicelife_id)
REFERENCES engy_servicelife (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_facilities 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_facilities ADD CONSTRAINT engy_facilitie_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE engy_facilities ADD CONSTRAINT engy_facilities_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_facilities ADD CONSTRAINT engy_facilitie_heatdiss_fk FOREIGN KEY (heatdissipation_id)
REFERENCES engy_heatexchangetype (id)
ON DELETE SET NULL;

ALTER TABLE engy_facilities ADD CONSTRAINT engy_facili_usage_equip_fk FOREIGN KEY (usagezone_equippedwith_id)
REFERENCES engy_usagezone (id)
ON DELETE SET NULL;

ALTER TABLE engy_facilities ADD CONSTRAINT engy_facilitie_operatio_fk FOREIGN KEY (operationschedule_id)
REFERENCES engy_schedule (id)
ON DELETE SET NULL;

ALTER TABLE engy_facilities ADD CONSTRAINT engy_facili_build_equip_fk FOREIGN KEY (buildingunit_equippedwith_id)
REFERENCES engy_buildingunit (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_floorarea 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_floorarea ADD CONSTRAINT engy_floora_build_floor_fk FOREIGN KEY (building_floorarea_id)
REFERENCES engy_building (id);

ALTER TABLE engy_floorarea ADD CONSTRAINT engy_floora_therm_floor_fk FOREIGN KEY (thermalzone_floorarea_id)
REFERENCES engy_thermalzone (id);

ALTER TABLE engy_floorarea ADD CONSTRAINT engy_floora_usage_floor_fk FOREIGN KEY (usagezone_floorarea_id)
REFERENCES engy_usagezone (id);

ALTER TABLE engy_floorarea ADD CONSTRAINT engy_floor_build_floo_fk_1 FOREIGN KEY (buildingunit_floorarea_id)
REFERENCES engy_buildingunit (id);

-- -------------------------------------------------------------------- 
-- engy_gas 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_gas ADD CONSTRAINT engy_gas_fk FOREIGN KEY (id)
REFERENCES engy_material (id);

-- -------------------------------------------------------------------- 
-- engy_heatexchanger 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_heatexchanger ADD CONSTRAINT engy_heatexchanger_fk FOREIGN KEY (id)
REFERENCES engy_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- engy_heatpump 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_heatpump ADD CONSTRAINT engy_heatpump_fk FOREIGN KEY (id)
REFERENCES engy_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- engy_heightaboveground 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_heightaboveground ADD CONSTRAINT engy_height_build_heigh_fk FOREIGN KEY (building_heightabovegroun_id)
REFERENCES engy_building (id);

-- -------------------------------------------------------------------- 
-- engy_household 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_household ADD CONSTRAINT engy_household_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_household ADD CONSTRAINT engy_househ_occup_house_fk FOREIGN KEY (occupants_household_id)
REFERENCES engy_occupants (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_imagetexture 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_imagetexture ADD CONSTRAINT engy_imagetexture_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- engy_irregulartimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_irregulartimeseries ADD CONSTRAINT engy_irregulartimeserie_fk FOREIGN KEY (id)
REFERENCES engy_timeseries (id);

-- -------------------------------------------------------------------- 
-- engy_irregulartimeseriesf 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_irregulartimeseriesf ADD CONSTRAINT engy_irregulartimeser_fk_1 FOREIGN KEY (id)
REFERENCES engy_timeseries (id);

-- -------------------------------------------------------------------- 
-- engy_layer 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_layer ADD CONSTRAINT engy_layer_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_layer ADD CONSTRAINT engy_layer_constr_layer_fk FOREIGN KEY (construction_layer_id)
REFERENCES engy_construction_1 (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_layercomponent 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_layercomponent ADD CONSTRAINT engy_layercomponent_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_layercomponent ADD CONSTRAINT engy_layercomp_servicel_fk FOREIGN KEY (servicelife_id)
REFERENCES engy_servicelife (id)
ON DELETE SET NULL;

ALTER TABLE engy_layercomponent ADD CONSTRAINT engy_layerc_layer_layer_fk FOREIGN KEY (layer_layercomponent_id)
REFERENCES engy_layer (id)
ON DELETE SET NULL;

ALTER TABLE engy_layercomponent ADD CONSTRAINT engy_layercomp_material_fk FOREIGN KEY (material_id)
REFERENCES engy_material (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_material 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_material ADD CONSTRAINT engy_material_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_material ADD CONSTRAINT engy_material_objectcla_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE engy_material ADD CONSTRAINT engy_material_imagetext_fk FOREIGN KEY (imagetexture_id)
REFERENCES engy_imagetexture (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_measurementpoint 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_measurementpoint ADD CONSTRAINT engy_measur_irreg_conta_fk FOREIGN KEY (irregulartimeser_contains_id)
REFERENCES engy_irregulartimeseries (id);

-- -------------------------------------------------------------------- 
-- engy_mechanicalventilatio 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_mechanicalventilatio ADD CONSTRAINT engy_mechanicalventilat_fk FOREIGN KEY (id)
REFERENCES engy_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- engy_occupants 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_occupants ADD CONSTRAINT engy_occupants_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_occupants ADD CONSTRAINT engy_occupants_heatdiss_fk FOREIGN KEY (heatdissipation_id)
REFERENCES engy_heatexchangetype (id)
ON DELETE SET NULL;

ALTER TABLE engy_occupants ADD CONSTRAINT engy_occupa_usage_occup_fk FOREIGN KEY (usagezone_occupiedby_id)
REFERENCES engy_usagezone (id)
ON DELETE SET NULL;

ALTER TABLE engy_occupants ADD CONSTRAINT engy_occupants_occupanc_fk FOREIGN KEY (occupancyrate_id)
REFERENCES engy_schedule (id)
ON DELETE SET NULL;

ALTER TABLE engy_occupants ADD CONSTRAINT engy_occupa_build_occup_fk FOREIGN KEY (buildingunit_occupiedby_id)
REFERENCES engy_buildingunit (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_periodofyear 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_periodofyear ADD CONSTRAINT engy_period_sched_perio_fk FOREIGN KEY (schedule_periodofyear_id)
REFERENCES engy_schedule (id);

-- -------------------------------------------------------------------- 
-- engy_photovoltaicsystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_photovoltaicsystem ADD CONSTRAINT engy_photovoltaicsystem_fk FOREIGN KEY (id)
REFERENCES engy_solarenergysystem (id);

-- -------------------------------------------------------------------- 
-- engy_photovoltaicthermals 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_photovoltaicthermals ADD CONSTRAINT engy_photovoltaictherma_fk FOREIGN KEY (id)
REFERENCES engy_solarenergysystem (id);

-- -------------------------------------------------------------------- 
-- engy_powerdistributionsys 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_powerdistributionsys ADD CONSTRAINT engy_powerdistributions_fk FOREIGN KEY (id)
REFERENCES engy_energydistributionsy (id);

-- -------------------------------------------------------------------- 
-- engy_powerstoragesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_powerstoragesystem ADD CONSTRAINT engy_powerstoragesystem_fk FOREIGN KEY (id)
REFERENCES engy_storagesystem (id);

-- -------------------------------------------------------------------- 
-- engy_reflectance 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_reflectance ADD CONSTRAINT engy_reflec_optic_refle_fk FOREIGN KEY (opticalproper_reflectance_id)
REFERENCES engy_opticalproperties (id);

-- -------------------------------------------------------------------- 
-- engy_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_refurbishmentmeasure ADD CONSTRAINT engy_refurb_build_refur_fk FOREIGN KEY (building_refurbishmentmea_id)
REFERENCES engy_building (id);

ALTER TABLE engy_refurbishmentmeasure ADD CONSTRAINT engy_refurbishment_date_fk FOREIGN KEY (date_id)
REFERENCES engy_dateofevent (id)
ON DELETE SET NULL;

ALTER TABLE engy_refurbishmentmeasure ADD CONSTRAINT engy_refurb_therm_refur_fk FOREIGN KEY (thermalbound_refurbishmen_id)
REFERENCES engy_thermalboundary (id);

-- -------------------------------------------------------------------- 
-- engy_regulartimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_regulartimeseries ADD CONSTRAINT engy_regulartimeseries_fk FOREIGN KEY (id)
REFERENCES engy_timeseries (id);

-- -------------------------------------------------------------------- 
-- engy_regulartimeseriesfil 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_regulartimeseriesfil ADD CONSTRAINT engy_regulartimeseriesf_fk FOREIGN KEY (id)
REFERENCES engy_timeseries (id);

-- -------------------------------------------------------------------- 
-- engy_schedule 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_schedule ADD CONSTRAINT engy_schedule_objectcla_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE engy_schedule ADD CONSTRAINT engy_schedule_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_schedule ADD CONSTRAINT engy_schedule_timedepen_fk FOREIGN KEY (timedependingvalues_id)
REFERENCES engy_timeseries (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_servicelife 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_servicelife ADD CONSTRAINT engy_servicelife_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- engy_shadingtype 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_shadingtype ADD CONSTRAINT engy_shadingty_transmit_fk FOREIGN KEY (transmittance_id)
REFERENCES engy_transmittance (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_solarenergysystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_solarenergysystem ADD CONSTRAINT engy_solarenergysystem_fk FOREIGN KEY (id)
REFERENCES engy_energyconversionsyst (id);

ALTER TABLE engy_solarenergysystem ADD CONSTRAINT engy_solarener_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE engy_solarenergysystem ADD CONSTRAINT engy_solarener_installe_fk FOREIGN KEY (installedonboundarysurfac_id)
REFERENCES thematic_surface (id)
ON DELETE SET NULL;

ALTER TABLE engy_solarenergysystem ADD CONSTRAINT engy_solarene_install_fk_1 FOREIGN KEY (installedonbuildinginstal_id)
REFERENCES building_installation (id)
ON DELETE SET NULL;

ALTER TABLE engy_solarenergysystem ADD CONSTRAINT engy_solarener_surfaceg_fk FOREIGN KEY (surfacegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- engy_solarthermalsystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_solarthermalsystem ADD CONSTRAINT engy_solarthermalsystem_fk FOREIGN KEY (id)
REFERENCES engy_solarenergysystem (id);

-- -------------------------------------------------------------------- 
-- engy_solidmaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_solidmaterial ADD CONSTRAINT engy_solidmaterial_fk FOREIGN KEY (id)
REFERENCES engy_material (id);

-- -------------------------------------------------------------------- 
-- engy_storagesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_storagesystem ADD CONSTRAINT engy_storagesystem_fk FOREIGN KEY (id)
REFERENCES engy_energysystem (id);

ALTER TABLE engy_storagesystem ADD CONSTRAINT engy_storagesy_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- engy_systemoperation 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_systemoperation ADD CONSTRAINT engy_systemoperation_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_systemoperation ADD CONSTRAINT engy_systemope_operatio_fk FOREIGN KEY (operationtime_id)
REFERENCES engy_schedule (id)
ON DELETE SET NULL;

ALTER TABLE engy_systemoperation ADD CONSTRAINT engy_systemo_energy_has_fk FOREIGN KEY (energyconversionsyste_has_id)
REFERENCES engy_energyconversionsyst (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_ther_deli_to_the_bou ADD CONSTRAINT engy_the_del_to_the_bou_fk FOREIGN KEY (thermalboundary_delimits_id)
REFERENCES engy_thermalboundary (id)
ON DELETE CASCADE;

ALTER TABLE engy_ther_deli_to_the_bou ADD CONSTRAINT eng_the_del_to_the_bo_fk_1 FOREIGN KEY (thermalzone_boundedby_id)
REFERENCES engy_thermalzone (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_therm_to_thema_surfa ADD CONSTRAINT engy_ther_to_them_surf_fk1 FOREIGN KEY (thermalboundary_id)
REFERENCES engy_thermalboundary (id)
ON DELETE CASCADE;

ALTER TABLE engy_therm_to_thema_surfa ADD CONSTRAINT engy_ther_to_them_surf_fk2 FOREIGN KEY (thematic_surface_id)
REFERENCES thematic_surface (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_thermalboundary 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalboundary ADD CONSTRAINT engy_thermalboundary_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_thermalboundary ADD CONSTRAINT engy_thermalbo_construc_fk FOREIGN KEY (construction_id)
REFERENCES engy_construction (id)
ON DELETE SET NULL;

ALTER TABLE engy_thermalboundary ADD CONSTRAINT engy_thermalbo_surfaceg_fk FOREIGN KEY (surfacegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- engy_thermaldistributions 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermaldistributions ADD CONSTRAINT engy_thermaldistributio_fk FOREIGN KEY (id)
REFERENCES engy_energydistributionsy (id);

-- -------------------------------------------------------------------- 
-- engy_thermalop_to_opening 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalop_to_opening ADD CONSTRAINT engy_thermal_to_openin_fk1 FOREIGN KEY (thermalopening_id)
REFERENCES engy_thermalopening (id)
ON DELETE CASCADE;

ALTER TABLE engy_thermalop_to_opening ADD CONSTRAINT engy_thermal_to_openin_fk2 FOREIGN KEY (opening_id)
REFERENCES opening (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_thermalopening 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalopening ADD CONSTRAINT engy_thermalopening_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_thermalopening ADD CONSTRAINT engy_thermalop_construc_fk FOREIGN KEY (construction_id)
REFERENCES engy_construction (id)
ON DELETE SET NULL;

ALTER TABLE engy_thermalopening ADD CONSTRAINT engy_thermalop_indoorsh_fk FOREIGN KEY (indoorshading_id)
REFERENCES engy_shadingtype (id)
ON DELETE SET NULL;

ALTER TABLE engy_thermalopening ADD CONSTRAINT engy_thermalop_outdoors_fk FOREIGN KEY (outdoorshading_id)
REFERENCES engy_shadingtype (id)
ON DELETE SET NULL;

ALTER TABLE engy_thermalopening ADD CONSTRAINT engy_therma_therm_conta_fk FOREIGN KEY (thermalboundary_contains_id)
REFERENCES engy_thermalboundary (id)
ON DELETE SET NULL;

ALTER TABLE engy_thermalopening ADD CONSTRAINT engy_thermalop_surfaceg_fk FOREIGN KEY (surfacegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- engy_thermalstoragesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalstoragesystem ADD CONSTRAINT engy_thermalstoragesyst_fk FOREIGN KEY (id)
REFERENCES engy_storagesystem (id);

-- -------------------------------------------------------------------- 
-- engy_thermalzone 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalzone ADD CONSTRAINT engy_thermalzone_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_thermalzone ADD CONSTRAINT engy_therma_build_therm_fk FOREIGN KEY (building_thermalzone_id)
REFERENCES engy_building (id)
ON DELETE SET NULL;

ALTER TABLE engy_thermalzone ADD CONSTRAINT engy_thermalzo_volumege_fk FOREIGN KEY (volumegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- engy_thermalzone_to_room 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_thermalzone_to_room ADD CONSTRAINT engy_thermalzo_to_room_fk1 FOREIGN KEY (thermalzone_id)
REFERENCES engy_thermalzone (id)
ON DELETE CASCADE;

ALTER TABLE engy_thermalzone_to_room ADD CONSTRAINT engy_thermalzo_to_room_fk2 FOREIGN KEY (room_id)
REFERENCES room (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- engy_timeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_timeseries ADD CONSTRAINT engy_timeseries_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_timeseries ADD CONSTRAINT engy_timeserie_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- engy_transmittance 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_transmittance ADD CONSTRAINT engy_transm_optic_trans_fk FOREIGN KEY (opticalprope_transmittanc_id)
REFERENCES engy_opticalproperties (id);

-- -------------------------------------------------------------------- 
-- engy_usagezone 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_usagezone ADD CONSTRAINT engy_usagezone_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_usagezone ADD CONSTRAINT engy_usagez_build_usage_fk FOREIGN KEY (building_usagezone_id)
REFERENCES engy_building (id)
ON DELETE SET NULL;

ALTER TABLE engy_usagezone ADD CONSTRAINT engy_usagez_therm_conta_fk FOREIGN KEY (thermalzone_contains_id)
REFERENCES engy_thermalzone (id)
ON DELETE SET NULL;

ALTER TABLE engy_usagezone ADD CONSTRAINT engy_usagezone_averagei_fk FOREIGN KEY (averageinternalgains_id)
REFERENCES engy_heatexchangetype (id)
ON DELETE SET NULL;

ALTER TABLE engy_usagezone ADD CONSTRAINT engy_usagezone_coolings_fk FOREIGN KEY (coolingschedule_id)
REFERENCES engy_schedule (id)
ON DELETE SET NULL;

ALTER TABLE engy_usagezone ADD CONSTRAINT engy_usagezone_heatings_fk FOREIGN KEY (heatingschedule_id)
REFERENCES engy_schedule (id)
ON DELETE SET NULL;

ALTER TABLE engy_usagezone ADD CONSTRAINT engy_usagezone_ventilat_fk FOREIGN KEY (ventilationschedule_id)
REFERENCES engy_schedule (id)
ON DELETE SET NULL;

ALTER TABLE engy_usagezone ADD CONSTRAINT engy_usagezone_volumege_fk FOREIGN KEY (volumegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- engy_volumetype 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_volumetype ADD CONSTRAINT engy_volume_build_volum_fk FOREIGN KEY (building_volume_id)
REFERENCES engy_building (id);

ALTER TABLE engy_volumetype ADD CONSTRAINT engy_volume_therm_volum_fk FOREIGN KEY (thermalzone_volume_id)
REFERENCES engy_thermalzone (id);

-- -------------------------------------------------------------------- 
-- engy_weatherdata 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_weatherdata ADD CONSTRAINT engy_weatherdata_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE engy_weatherdata ADD CONSTRAINT engy_weatherdata_values_fk FOREIGN KEY (values_id)
REFERENCES engy_timeseries (id)
ON DELETE SET NULL;

ALTER TABLE engy_weatherdata ADD CONSTRAINT engy_weathe_cityo_weath_fk FOREIGN KEY (cityobject_weatherdata_id)
REFERENCES engy_cityobject (id)
ON DELETE SET NULL;

ALTER TABLE engy_weatherdata ADD CONSTRAINT engy_weathe_weath_param_fk FOREIGN KEY (weatherstation_parameter_id)
REFERENCES engy_weatherstation (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- engy_weatherstation 
-- -------------------------------------------------------------------- 
ALTER TABLE engy_weatherstation ADD CONSTRAINT engy_weatherstation_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create Indexes ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

SET SERVEROUTPUT ON
SET FEEDBACK ON
SET VER OFF
VARIABLE SRID NUMBER;
BEGIN
  SELECT SRID INTO :SRID FROM DATABASE_SRS;
END;
/

column mc new_value SRSNO print
select :SRID mc from dual;

prompt Used SRID for spatial indexes: &SRSNO; 

-- -------------------------------------------------------------------- 
-- engy_building 
-- -------------------------------------------------------------------- 
DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='ENGY_BUILDING' AND COLUMN_NAME='REFERENCEPOINT';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('ENGY_BUILDING','REFERENCEPOINT',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX engy_building_referenc_spx ON engy_building (referencepoint) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

-- -------------------------------------------------------------------- 
-- engy_buildingu_to_address 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_buildi_to_addres_fk2x ON engy_buildingu_to_address (address_id);

CREATE INDEX engy_buildi_to_addres_fk1x ON engy_buildingu_to_address (buildingunit_id);

-- -------------------------------------------------------------------- 
-- engy_buildingunit 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_build_usage_conta_fkx ON engy_buildingunit (usagezone_contains_id);

-- -------------------------------------------------------------------- 
-- engy_construction 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_construc_basecons_fkx ON engy_construction (baseconstruction_id);

CREATE INDEX engy_const_build_aggre_fkx ON engy_construction (building_aggregatedbuildi_id);

-- -------------------------------------------------------------------- 
-- engy_construction_1 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_construc_opticalp_fkx ON engy_construction_1 (opticalproperties_id);

CREATE INDEX engy_construc_servicel_fkx ON engy_construction_1 (servicelife_id);

-- -------------------------------------------------------------------- 
-- engy_dailyschedule 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_daily_perio_daily_fkx ON engy_dailyschedule (periodofyear_dailyschedul_id);

CREATE INDEX engy_dailysch_schedule_fkx ON engy_dailyschedule (schedule_id);

-- -------------------------------------------------------------------- 
-- engy_emissivity 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_emiss_optic_emiss_fkx ON engy_emissivity (opticalpropert_emissivity_id);

-- -------------------------------------------------------------------- 
-- engy_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_emi_emi_to_ene_ise_fk ON engy_emit_emit_to_ene_ise (emittersystem_emitts_id);

CREATE INDEX eng_emi_emi_to_ene_is_fk_1 ON engy_emit_emit_to_ene_ise (energyflow_isemittedby_id);

-- -------------------------------------------------------------------- 
-- engy_emittersystem 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_emitters_thermale_fkx ON engy_emittersystem (thermalexchange_id);

-- -------------------------------------------------------------------- 
-- engy_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_ene_dis_to_ene_isd_fk ON engy_ener_dist_to_ene_isd (energydistrib_distributes_id);

CREATE INDEX eng_ene_dis_to_ene_is_fk_1 ON engy_ener_dist_to_ene_isd (energyflow_isdistributedb_id);

-- -------------------------------------------------------------------- 
-- engy_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_ene_iss_to_sto_sto_fk ON engy_ener_isst_to_sto_sto (energyflow_isstoredby_id);

CREATE INDEX eng_ene_iss_to_sto_st_fk_1 ON engy_ener_isst_to_sto_sto (storagesystem_stores_id);

-- -------------------------------------------------------------------- 
-- engy_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_ene_pro_to_ene_isp_fk ON engy_ener_prov_to_ene_isp (energyconversion_provides_id);

CREATE INDEX eng_ene_pro_to_ene_is_fk_1 ON engy_ener_prov_to_ene_isp (energyflow_isprovidedby_id);

-- -------------------------------------------------------------------- 
-- engy_energyconversionsyst 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_energyco_objectcl_fkx ON engy_energyconversionsyst (objectclass_id);

-- -------------------------------------------------------------------- 
-- engy_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_energ_to_cityo_fk2x_1 ON engy_energyde_to_cityobje (cityobject_id);

CREATE INDEX engy_energ_to_cityo_fk1x_1 ON engy_energyde_to_cityobje (energydemand_id);

-- -------------------------------------------------------------------- 
-- engy_energydemand 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_energ_cityo_deman_fkx ON engy_energydemand (cityobject_demands_id);

CREATE INDEX engy_energyde_energyam_fkx ON engy_energydemand (energyamount_id);

-- -------------------------------------------------------------------- 
-- engy_energydistributionsy 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_energydi_objectcl_fkx ON engy_energydistributionsy (objectclass_id);

-- -------------------------------------------------------------------- 
-- engy_energyflow 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_energyfl_energyam_fkx ON engy_energyflow (energyamount_id);

-- -------------------------------------------------------------------- 
-- engy_energyperformancecer 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_energ_build_energ_fkx ON engy_energyperformancecer (building_energyperformanc_id);

CREATE INDEX engy_energ_buil_ener_fkx_1 ON engy_energyperformancecer (buildingunit_energyperfor_id);

-- -------------------------------------------------------------------- 
-- engy_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_energy_to_cityob_fk2x ON engy_energysy_to_cityobje (cityobject_id);

CREATE INDEX engy_energy_to_cityob_fk1x ON engy_energysy_to_cityobje (energysystem_id);

-- -------------------------------------------------------------------- 
-- engy_energysystem 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_energysy_objectcl_fkx ON engy_energysystem (objectclass_id);

CREATE INDEX engy_energysy_servicel_fkx ON engy_energysystem (servicelife_id);

-- -------------------------------------------------------------------- 
-- engy_facilities 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_facil_build_equip_fkx ON engy_facilities (buildingunit_equippedwith_id);

CREATE INDEX engy_faciliti_heatdiss_fkx ON engy_facilities (heatdissipation_id);

CREATE INDEX engy_faciliti_objectcl_fkx ON engy_facilities (objectclass_id);

CREATE INDEX engy_faciliti_operatio_fkx ON engy_facilities (operationschedule_id);

CREATE INDEX engy_facil_usage_equip_fkx ON engy_facilities (usagezone_equippedwith_id);

-- -------------------------------------------------------------------- 
-- engy_floorarea 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_floor_build_floor_fkx ON engy_floorarea (building_floorarea_id);

CREATE INDEX engy_floor_buil_floo_fkx_1 ON engy_floorarea (buildingunit_floorarea_id);

CREATE INDEX engy_floor_therm_floor_fkx ON engy_floorarea (thermalzone_floorarea_id);

CREATE INDEX engy_floor_usage_floor_fkx ON engy_floorarea (usagezone_floorarea_id);

-- -------------------------------------------------------------------- 
-- engy_heightaboveground 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_heigh_build_heigh_fkx ON engy_heightaboveground (building_heightabovegroun_id);

-- -------------------------------------------------------------------- 
-- engy_household 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_house_occup_house_fkx ON engy_household (occupants_household_id);

-- -------------------------------------------------------------------- 
-- engy_layer 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_layer_const_layer_fkx ON engy_layer (construction_layer_id);

-- -------------------------------------------------------------------- 
-- engy_layercomponent 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_layer_layer_layer_fkx ON engy_layercomponent (layer_layercomponent_id);

CREATE INDEX engy_layercom_material_fkx ON engy_layercomponent (material_id);

CREATE INDEX engy_layercom_servicel_fkx ON engy_layercomponent (servicelife_id);

-- -------------------------------------------------------------------- 
-- engy_material 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_material_imagetex_fkx ON engy_material (imagetexture_id);

CREATE INDEX engy_material_objectcl_fkx ON engy_material (objectclass_id);

-- -------------------------------------------------------------------- 
-- engy_measurementpoint 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_measu_irreg_conta_fkx ON engy_measurementpoint (irregulartimeser_contains_id);

-- -------------------------------------------------------------------- 
-- engy_occupants 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_occup_build_occup_fkx ON engy_occupants (buildingunit_occupiedby_id);

CREATE INDEX engy_occupant_heatdiss_fkx ON engy_occupants (heatdissipation_id);

CREATE INDEX engy_occupant_occupanc_fkx ON engy_occupants (occupancyrate_id);

CREATE INDEX engy_occup_usage_occup_fkx ON engy_occupants (usagezone_occupiedby_id);

-- -------------------------------------------------------------------- 
-- engy_periodofyear 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_perio_sched_perio_fkx ON engy_periodofyear (schedule_periodofyear_id);

-- -------------------------------------------------------------------- 
-- engy_reflectance 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_refle_optic_refle_fkx ON engy_reflectance (opticalproper_reflectance_id);

-- -------------------------------------------------------------------- 
-- engy_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_refur_build_refur_fkx ON engy_refurbishmentmeasure (building_refurbishmentmea_id);

CREATE INDEX engy_refurbishmen_date_fkx ON engy_refurbishmentmeasure (date_id);

CREATE INDEX engy_refur_therm_refur_fkx ON engy_refurbishmentmeasure (thermalbound_refurbishmen_id);

-- -------------------------------------------------------------------- 
-- engy_schedule 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_schedule_objectcl_fkx ON engy_schedule (objectclass_id);

CREATE INDEX engy_schedule_timedepe_fkx ON engy_schedule (timedependingvalues_id);

-- -------------------------------------------------------------------- 
-- engy_shadingtype 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_shadingt_transmit_fkx ON engy_shadingtype (transmittance_id);

-- -------------------------------------------------------------------- 
-- engy_solarenergysystem 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_solarene_installe_fkx ON engy_solarenergysystem (installedonboundarysurfac_id);

CREATE INDEX engy_solaren_install_fkx_1 ON engy_solarenergysystem (installedonbuildinginstal_id);

CREATE INDEX engy_solarene_objectcl_fkx ON engy_solarenergysystem (objectclass_id);

CREATE INDEX engy_solarene_surfaceg_fkx ON engy_solarenergysystem (surfacegeometry_id);

-- -------------------------------------------------------------------- 
-- engy_storagesystem 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_storages_objectcl_fkx ON engy_storagesystem (objectclass_id);

-- -------------------------------------------------------------------- 
-- engy_systemoperation 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_system_energy_has_fkx ON engy_systemoperation (energyconversionsyste_has_id);

CREATE INDEX engy_systemop_operatio_fkx ON engy_systemoperation (operationtime_id);

-- -------------------------------------------------------------------- 
-- engy_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_the_del_to_the_bou_fk ON engy_ther_deli_to_the_bou (thermalboundary_delimits_id);

CREATE INDEX eng_the_del_to_the_bo_fk_1 ON engy_ther_deli_to_the_bou (thermalzone_boundedby_id);

-- -------------------------------------------------------------------- 
-- engy_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_ther_to_them_surf_fk2 ON engy_therm_to_thema_surfa (thematic_surface_id);

CREATE INDEX engy_ther_to_them_surf_fk1 ON engy_therm_to_thema_surfa (thermalboundary_id);

-- -------------------------------------------------------------------- 
-- engy_thermalboundary 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_thermalb_construc_fkx ON engy_thermalboundary (construction_id);

CREATE INDEX engy_thermalb_surfaceg_fkx ON engy_thermalboundary (surfacegeometry_id);

-- -------------------------------------------------------------------- 
-- engy_thermalop_to_opening 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_therma_to_openin_fk2x ON engy_thermalop_to_opening (opening_id);

CREATE INDEX engy_therma_to_openin_fk1x ON engy_thermalop_to_opening (thermalopening_id);

-- -------------------------------------------------------------------- 
-- engy_thermalopening 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_thermalo_construc_fkx ON engy_thermalopening (construction_id);

CREATE INDEX engy_thermalo_indoorsh_fkx ON engy_thermalopening (indoorshading_id);

CREATE INDEX engy_thermalo_outdoors_fkx ON engy_thermalopening (outdoorshading_id);

CREATE INDEX engy_thermalo_surfaceg_fkx ON engy_thermalopening (surfacegeometry_id);

CREATE INDEX engy_therm_therm_conta_fkx ON engy_thermalopening (thermalboundary_contains_id);

-- -------------------------------------------------------------------- 
-- engy_thermalzone 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_therm_build_therm_fkx ON engy_thermalzone (building_thermalzone_id);

CREATE INDEX engy_thermalz_volumege_fkx ON engy_thermalzone (volumegeometry_id);

-- -------------------------------------------------------------------- 
-- engy_thermalzone_to_room 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_thermalz_to_room_fk2x ON engy_thermalzone_to_room (room_id);

CREATE INDEX engy_thermalz_to_room_fk1x ON engy_thermalzone_to_room (thermalzone_id);

-- -------------------------------------------------------------------- 
-- engy_timeseries 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_timeseri_objectcl_fkx ON engy_timeseries (objectclass_id);

-- -------------------------------------------------------------------- 
-- engy_transmittance 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_trans_optic_trans_fkx ON engy_transmittance (opticalprope_transmittanc_id);

-- -------------------------------------------------------------------- 
-- engy_usagezone 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_usagezon_averagei_fkx ON engy_usagezone (averageinternalgains_id);

CREATE INDEX engy_usage_build_usage_fkx ON engy_usagezone (building_usagezone_id);

CREATE INDEX engy_usagezon_coolings_fkx ON engy_usagezone (coolingschedule_id);

CREATE INDEX engy_usagezon_heatings_fkx ON engy_usagezone (heatingschedule_id);

CREATE INDEX engy_usage_therm_conta_fkx ON engy_usagezone (thermalzone_contains_id);

CREATE INDEX engy_usagezon_ventilat_fkx ON engy_usagezone (ventilationschedule_id);

CREATE INDEX engy_usagezon_volumege_fkx ON engy_usagezone (volumegeometry_id);

-- -------------------------------------------------------------------- 
-- engy_volumetype 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_volum_build_volum_fkx ON engy_volumetype (building_volume_id);

CREATE INDEX engy_volum_therm_volum_fkx ON engy_volumetype (thermalzone_volume_id);

-- -------------------------------------------------------------------- 
-- engy_weatherdata 
-- -------------------------------------------------------------------- 
CREATE INDEX engy_weath_cityo_weath_fkx ON engy_weatherdata (cityobject_weatherdata_id);

DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='ENGY_WEATHERDATA' AND COLUMN_NAME='POSITION';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('ENGY_WEATHERDATA','POSITION',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX engy_weatherd_position_spx ON engy_weatherdata (position) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

CREATE INDEX engy_weatherdat_values_fkx ON engy_weatherdata (values_id);

CREATE INDEX engy_weath_weath_param_fkx ON engy_weatherdata (weatherstation_parameter_id);

-- -------------------------------------------------------------------- 
-- engy_weatherstation 
-- -------------------------------------------------------------------- 
DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='ENGY_WEATHERSTATION' AND COLUMN_NAME='POSITION';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('ENGY_WEATHERSTATION','POSITION',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX engy_weathers_position_spx ON engy_weatherstation (position) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create Sequences *********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

CREATE SEQUENCE engy_energyperformanc_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_volumetype_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_refurbishmentmea_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_floorarea_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_heightabovegroun_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_dateofevent_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_heatexchangetype_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_shadingtype_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_transmittance_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_opticalpropertie_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_emissivity_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_reflectance_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_timevaluesproper_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_periodofyear_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_dailyschedule_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE engy_measurementpoint_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

