-- This document was automatically created by the ADE-Manager tool of 3DCityDB (https://www.3dcitydb.org) on 2019-03-13 11:13:40 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create tables ************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- ng_aircompressor 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_aircompressor
(
    id INTEGER NOT NULL,
    compressortype VARCHAR2(1000),
    pressure NUMBER,
    pressure_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_building 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_building
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
-- ng_buildingu_to_address 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_buildingu_to_address
(
    address_id INTEGER NOT NULL,
    buildingunit_id INTEGER NOT NULL,
    PRIMARY KEY (address_id, buildingunit_id)
);

-- -------------------------------------------------------------------- 
-- ng_buildingunit 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_buildingunit
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
-- ng_chiller 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_chiller
(
    id INTEGER NOT NULL,
    compressortype VARCHAR2(1000),
    condensationtype VARCHAR2(1000),
    refrigerant VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_cityobject 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_cityobject
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_combinedheatpower 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_combinedheatpower
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
-- ng_construction 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_construction
(
    id INTEGER NOT NULL,
    baseconstruction_id INTEGER,
    building_aggregatedbuildi_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_construction_1 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_construction_1
(
    id INTEGER NOT NULL,
    opticalproperties_id INTEGER,
    servicelife_id INTEGER,
    uvalue NUMBER,
    uvalue_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_dailyschedule 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_dailyschedule
(
    id INTEGER NOT NULL,
    daytype VARCHAR2(1000),
    periodofyear_dailyschedul_id INTEGER,
    schedule_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_dateofevent 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_dateofevent
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
-- ng_dhwfacilities 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_dhwfacilities
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
-- ng_dualvalueschedule 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_dualvalueschedule
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
-- ng_emissivity 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_emissivity
(
    id INTEGER NOT NULL,
    fraction NUMBER,
    fraction_uom VARCHAR2(1000),
    opticalpropert_emissivity_id INTEGER,
    surface VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_emit_emit_to_ene_ise
(
    emittersystem_emitts_id INTEGER NOT NULL,
    energyflow_isemittedby_id INTEGER NOT NULL,
    PRIMARY KEY (emittersystem_emitts_id, energyflow_isemittedby_id)
);

-- -------------------------------------------------------------------- 
-- ng_emittersystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_emittersystem
(
    id INTEGER NOT NULL,
    emittertype VARCHAR2(1000),
    installedpower NUMBER,
    installedpower_uom VARCHAR2(1000),
    thermalexchange_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_ener_dist_to_ene_isd
(
    energydistrib_distributes_id INTEGER NOT NULL,
    energyflow_isdistributedb_id INTEGER NOT NULL,
    PRIMARY KEY (energydistrib_distributes_id, energyflow_isdistributedb_id)
);

-- -------------------------------------------------------------------- 
-- ng_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_ener_isst_to_sto_sto
(
    energyflow_isstoredby_id INTEGER NOT NULL,
    storagesystem_stores_id INTEGER NOT NULL,
    PRIMARY KEY (energyflow_isstoredby_id, storagesystem_stores_id)
);

-- -------------------------------------------------------------------- 
-- ng_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_ener_prov_to_ene_isp
(
    energyconversion_provides_id INTEGER NOT NULL,
    energyflow_isprovidedby_id INTEGER NOT NULL,
    PRIMARY KEY (energyconversion_provides_id, energyflow_isprovidedby_id)
);

-- -------------------------------------------------------------------- 
-- ng_energyconversionsyst 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_energyconversionsyst
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
-- ng_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_energyde_to_cityobje
(
    cityobject_id INTEGER NOT NULL,
    energydemand_id INTEGER NOT NULL,
    PRIMARY KEY (cityobject_id, energydemand_id)
);

-- -------------------------------------------------------------------- 
-- ng_energydemand 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_energydemand
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
-- ng_energydistributionsy 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_energydistributionsy
(
    id INTEGER NOT NULL,
    distributionperimeter VARCHAR2(1000),
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_energyflow 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_energyflow
(
    id INTEGER NOT NULL,
    energyamount_id INTEGER,
    energycarriertype VARCHAR2(1000),
    energycarriertype_codespace VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_energyperformancecer 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_energyperformancecer
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
-- ng_energysource 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_energysource
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
-- ng_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_energysy_to_cityobje
(
    cityobject_id INTEGER NOT NULL,
    energysystem_id INTEGER NOT NULL,
    PRIMARY KEY (cityobject_id, energysystem_id)
);

-- -------------------------------------------------------------------- 
-- ng_energysystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_energysystem
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
-- ng_facilities 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_facilities
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
-- ng_floorarea 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_floorarea
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
-- ng_gas 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_gas
(
    id INTEGER NOT NULL,
    isventilated NUMBER,
    rvalue NUMBER,
    rvalue_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_heatexchanger 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_heatexchanger
(
    id INTEGER NOT NULL,
    networkid VARCHAR2(1000),
    networknodeid VARCHAR2(1000),
    primaryheatsupplier VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_heatexchangetype 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_heatexchangetype
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
-- ng_heatpump 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_heatpump
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
-- ng_heightaboveground 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_heightaboveground
(
    id INTEGER NOT NULL,
    building_heightabovegroun_id INTEGER,
    heightreference VARCHAR2(1000),
    value NUMBER,
    value_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_household 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_household
(
    id INTEGER NOT NULL,
    householdtype VARCHAR2(1000),
    occupants_household_id INTEGER,
    residencetype VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_imagetexture 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_imagetexture
(
    id INTEGER NOT NULL,
    repeats NUMBER,
    repeatt NUMBER,
    url VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_irregulartimeseries 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_irregulartimeseries
(
    id INTEGER NOT NULL,
    uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_irregulartimeseriesf 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_irregulartimeseriesf
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
-- ng_layer 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_layer
(
    id INTEGER NOT NULL,
    construction_layer_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_layercomponent 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_layercomponent
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
-- ng_material 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_material
(
    id INTEGER NOT NULL,
    imagetexture_id INTEGER,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_measurementpoint 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_measurementpoint
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
-- ng_mechanicalventilatio 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_mechanicalventilatio
(
    id INTEGER NOT NULL,
    hasheatrecovery NUMBER,
    recuperationfactor NUMBER,
    recuperationfactor_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_occupants 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_occupants
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
-- ng_opticalproperties 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_opticalproperties
(
    id INTEGER NOT NULL,
    glazingratio NUMBER,
    glazingratio_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_periodofyear 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_periodofyear
(
    id INTEGER NOT NULL,
    schedule_periodofyear_id INTEGER,
    timeperiodprop_beginposition TIMESTAMP,
    timeperiodproper_endposition TIMESTAMP,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_photovoltaicsystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_photovoltaicsystem
(
    id INTEGER NOT NULL,
    celltype VARCHAR2(1000),
    modulearea NUMBER,
    modulearea_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_photovoltaicthermals 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_photovoltaicthermals
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
-- ng_powerdistributionsys 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_powerdistributionsys
(
    id INTEGER NOT NULL,
    current_ NUMBER,
    current_uom VARCHAR2(1000),
    voltage NUMBER,
    voltage_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_powerstoragesystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_powerstoragesystem
(
    id INTEGER NOT NULL,
    batterytechnology VARCHAR2(1000),
    powercapacity NUMBER,
    powercapacity_uom VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_reflectance 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_reflectance
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
-- ng_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_refurbishmentmeasure
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
-- ng_regulartimeseries 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_regulartimeseries
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
-- ng_regulartimeseriesfil 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_regulartimeseriesfil
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
-- ng_schedule 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_schedule
(
    id INTEGER NOT NULL,
    averagevalue NUMBER,
    averagevalue_uom VARCHAR2(1000),
    objectclass_id INTEGER,
    timedependingvalues_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_servicelife 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_servicelife
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
-- ng_shadingtype 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_shadingtype
(
    id INTEGER NOT NULL,
    maximumcoverratio NUMBER,
    maximumcoverratio_uom VARCHAR2(1000),
    name VARCHAR2(1000),
    transmittance_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_solarenergysystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_solarenergysystem
(
    id INTEGER NOT NULL,
    installedonboundarysurfac_id INTEGER,
    installedonbuildinginstal_id INTEGER,
    objectclass_id INTEGER,
    surfacegeometry_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_solarthermalsystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_solarthermalsystem
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
-- ng_solidmaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_solidmaterial
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
-- ng_storagesystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_storagesystem
(
    id INTEGER NOT NULL,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_systemoperation 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_systemoperation
(
    id INTEGER NOT NULL,
    enduse VARCHAR2(1000),
    energyconversionsyste_has_id INTEGER,
    operationtime_id INTEGER,
    yearlyglobalefficiency NUMBER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_ther_deli_to_the_bou
(
    thermalboundary_delimits_id INTEGER NOT NULL,
    thermalzone_boundedby_id INTEGER NOT NULL,
    PRIMARY KEY (thermalboundary_delimits_id, thermalzone_boundedby_id)
);

-- -------------------------------------------------------------------- 
-- ng_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_therm_to_thema_surfa
(
    thematic_surface_id INTEGER NOT NULL,
    thermalboundary_id INTEGER NOT NULL,
    PRIMARY KEY (thematic_surface_id, thermalboundary_id)
);

-- -------------------------------------------------------------------- 
-- ng_thermalboundary 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_thermalboundary
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
-- ng_thermaldistributions 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_thermaldistributions
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
-- ng_thermalop_to_opening 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_thermalop_to_opening
(
    opening_id INTEGER NOT NULL,
    thermalopening_id INTEGER NOT NULL,
    PRIMARY KEY (opening_id, thermalopening_id)
);

-- -------------------------------------------------------------------- 
-- ng_thermalopening 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_thermalopening
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
-- ng_thermalstoragesystem 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_thermalstoragesystem
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
-- ng_thermalzone 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_thermalzone
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
-- ng_thermalzone_to_room 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_thermalzone_to_room
(
    room_id INTEGER NOT NULL,
    thermalzone_id INTEGER NOT NULL,
    PRIMARY KEY (room_id, thermalzone_id)
);

-- -------------------------------------------------------------------- 
-- ng_timeseries 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_timeseries
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
-- ng_timevaluesproperties 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_timevaluesproperties
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
-- ng_transmittance 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_transmittance
(
    id INTEGER NOT NULL,
    fraction NUMBER,
    fraction_uom VARCHAR2(1000),
    opticalprope_transmittanc_id INTEGER,
    wavelengthrange VARCHAR2(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- ng_usagezone 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_usagezone
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
-- ng_volumetype 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_volumetype
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
-- ng_weatherdata 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_weatherdata
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
-- ng_weatherstation 
-- -------------------------------------------------------------------- 
CREATE TABLE ng_weatherstation
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
-- ng_aircompressor 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_aircompressor ADD CONSTRAINT ng_aircompressor_fk FOREIGN KEY (id)
REFERENCES ng_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- ng_building 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_building ADD CONSTRAINT ng_building_fk FOREIGN KEY (id)
REFERENCES building (id);

-- -------------------------------------------------------------------- 
-- ng_buildingu_to_address 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_buildingu_to_address ADD CONSTRAINT ng_buildin_to_addres_fk1 FOREIGN KEY (buildingunit_id)
REFERENCES ng_buildingunit (id)
ON DELETE CASCADE;

ALTER TABLE ng_buildingu_to_address ADD CONSTRAINT ng_buildin_to_addres_fk2 FOREIGN KEY (address_id)
REFERENCES address (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_buildingunit 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_buildingunit ADD CONSTRAINT ng_buildingunit_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_buildingunit ADD CONSTRAINT ng_buildi_usage_conta_fk FOREIGN KEY (usagezone_contains_id)
REFERENCES ng_usagezone (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_chiller 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_chiller ADD CONSTRAINT ng_chiller_fk FOREIGN KEY (id)
REFERENCES ng_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- ng_cityobject 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_cityobject ADD CONSTRAINT ng_cityobject_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- ng_combinedheatpower 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_combinedheatpower ADD CONSTRAINT ng_combinedheatpower_fk FOREIGN KEY (id)
REFERENCES ng_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- ng_construction 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_construction ADD CONSTRAINT ng_construction_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_construction ADD CONSTRAINT ng_constr_build_aggre_fk FOREIGN KEY (building_aggregatedbuildi_id)
REFERENCES ng_building (id)
ON DELETE SET NULL;

ALTER TABLE ng_construction ADD CONSTRAINT ng_construct_basecons_fk FOREIGN KEY (baseconstruction_id)
REFERENCES ng_construction_1 (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_construction_1 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_construction_1 ADD CONSTRAINT ng_construction_fk_1 FOREIGN KEY (id)
REFERENCES ng_construction (id);

ALTER TABLE ng_construction_1 ADD CONSTRAINT ng_construct_servicel_fk FOREIGN KEY (servicelife_id)
REFERENCES ng_servicelife (id)
ON DELETE SET NULL;

ALTER TABLE ng_construction_1 ADD CONSTRAINT ng_construct_opticalp_fk FOREIGN KEY (opticalproperties_id)
REFERENCES ng_opticalproperties (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_dailyschedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_dailyschedule ADD CONSTRAINT ng_dailysche_schedule_fk FOREIGN KEY (schedule_id)
REFERENCES ng_timeseries (id)
ON DELETE SET NULL;

ALTER TABLE ng_dailyschedule ADD CONSTRAINT ng_dailys_perio_daily_fk FOREIGN KEY (periodofyear_dailyschedul_id)
REFERENCES ng_periodofyear (id);

-- -------------------------------------------------------------------- 
-- ng_dhwfacilities 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_dhwfacilities ADD CONSTRAINT ng_dhwfacilities_fk FOREIGN KEY (id)
REFERENCES ng_facilities (id);

-- -------------------------------------------------------------------- 
-- ng_dualvalueschedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_dualvalueschedule ADD CONSTRAINT ng_dualvalueschedule_fk FOREIGN KEY (id)
REFERENCES ng_schedule (id);

-- -------------------------------------------------------------------- 
-- ng_emissivity 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_emissivity ADD CONSTRAINT ng_emissi_optic_emiss_fk FOREIGN KEY (opticalpropert_emissivity_id)
REFERENCES ng_opticalproperties (id);

-- -------------------------------------------------------------------- 
-- ng_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_emit_emit_to_ene_ise ADD CONSTRAINT ng_emi_emi_to_ene_ise_fk FOREIGN KEY (emittersystem_emitts_id)
REFERENCES ng_emittersystem (id)
ON DELETE CASCADE;

ALTER TABLE ng_emit_emit_to_ene_ise ADD CONSTRAINT eng_emi_emi_to_ene_is_fk_1 FOREIGN KEY (energyflow_isemittedby_id)
REFERENCES ng_energyflow (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_emittersystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_emittersystem ADD CONSTRAINT ng_emittersystem_fk FOREIGN KEY (id)
REFERENCES ng_energysystem (id);

ALTER TABLE ng_emittersystem ADD CONSTRAINT ng_emittersy_thermale_fk FOREIGN KEY (thermalexchange_id)
REFERENCES ng_heatexchangetype (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_ener_dist_to_ene_isd ADD CONSTRAINT ng_ene_dis_to_ene_isd_fk FOREIGN KEY (energydistrib_distributes_id)
REFERENCES ng_energydistributionsy (id)
ON DELETE CASCADE;

ALTER TABLE ng_ener_dist_to_ene_isd ADD CONSTRAINT eng_ene_dis_to_ene_is_fk_1 FOREIGN KEY (energyflow_isdistributedb_id)
REFERENCES ng_energyflow (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_ener_isst_to_sto_sto ADD CONSTRAINT ng_ene_iss_to_sto_sto_fk FOREIGN KEY (energyflow_isstoredby_id)
REFERENCES ng_energyflow (id)
ON DELETE CASCADE;

ALTER TABLE ng_ener_isst_to_sto_sto ADD CONSTRAINT eng_ene_iss_to_sto_st_fk_1 FOREIGN KEY (storagesystem_stores_id)
REFERENCES ng_storagesystem (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_ener_prov_to_ene_isp ADD CONSTRAINT ng_ene_pro_to_ene_isp_fk FOREIGN KEY (energyconversion_provides_id)
REFERENCES ng_energyconversionsyst (id)
ON DELETE CASCADE;

ALTER TABLE ng_ener_prov_to_ene_isp ADD CONSTRAINT eng_ene_pro_to_ene_is_fk_1 FOREIGN KEY (energyflow_isprovidedby_id)
REFERENCES ng_energyflow (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_energyconversionsyst 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energyconversionsyst ADD CONSTRAINT ng_energycon_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE ng_energyconversionsyst ADD CONSTRAINT ng_energyconversionsy_fk FOREIGN KEY (id)
REFERENCES ng_energysystem (id);

-- -------------------------------------------------------------------- 
-- ng_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energyde_to_cityobje ADD CONSTRAINT ng_energyd_to_cityob_fk1 FOREIGN KEY (energydemand_id)
REFERENCES ng_energydemand (id)
ON DELETE CASCADE;

ALTER TABLE ng_energyde_to_cityobje ADD CONSTRAINT ng_energyd_to_cityob_fk2 FOREIGN KEY (cityobject_id)
REFERENCES cityobject (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_energydemand 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energydemand ADD CONSTRAINT ng_energydemand_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_energydemand ADD CONSTRAINT ng_energydem_energyam_fk FOREIGN KEY (energyamount_id)
REFERENCES ng_timeseries (id)
ON DELETE SET NULL;

ALTER TABLE ng_energydemand ADD CONSTRAINT ng_energy_cityo_deman_fk FOREIGN KEY (cityobject_demands_id)
REFERENCES ng_cityobject (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_energydistributionsy 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energydistributionsy ADD CONSTRAINT ng_energydistribution_fk FOREIGN KEY (id)
REFERENCES ng_energysystem (id);

ALTER TABLE ng_energydistributionsy ADD CONSTRAINT ng_energydis_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- ng_energyflow 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energyflow ADD CONSTRAINT ng_energyflow_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_energyflow ADD CONSTRAINT ng_energyflo_energyam_fk FOREIGN KEY (energyamount_id)
REFERENCES ng_timeseries (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_energyperformancecer 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energyperformancecer ADD CONSTRAINT ng_energy_build_energ_fk FOREIGN KEY (building_energyperformanc_id)
REFERENCES ng_building (id);

ALTER TABLE ng_energyperformancecer ADD CONSTRAINT ng_energ_build_ener_fk_1 FOREIGN KEY (buildingunit_energyperfor_id)
REFERENCES ng_buildingunit (id);

-- -------------------------------------------------------------------- 
-- ng_energysource 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energysource ADD CONSTRAINT ng_energysource_fk FOREIGN KEY (id)
REFERENCES ng_energyflow (id);

-- -------------------------------------------------------------------- 
-- ng_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energysy_to_cityobje ADD CONSTRAINT ng_energys_to_cityob_fk1 FOREIGN KEY (energysystem_id)
REFERENCES ng_energysystem (id)
ON DELETE CASCADE;

ALTER TABLE ng_energysy_to_cityobje ADD CONSTRAINT ng_energys_to_cityob_fk2 FOREIGN KEY (cityobject_id)
REFERENCES cityobject (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_energysystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_energysystem ADD CONSTRAINT ng_energysystem_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_energysystem ADD CONSTRAINT ng_energysys_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE ng_energysystem ADD CONSTRAINT ng_energysys_servicel_fk FOREIGN KEY (servicelife_id)
REFERENCES ng_servicelife (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_facilities 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_facilities ADD CONSTRAINT ng_facilitie_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE ng_facilities ADD CONSTRAINT ng_facilities_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_facilities ADD CONSTRAINT ng_facilitie_heatdiss_fk FOREIGN KEY (heatdissipation_id)
REFERENCES ng_heatexchangetype (id)
ON DELETE SET NULL;

ALTER TABLE ng_facilities ADD CONSTRAINT ng_facili_usage_equip_fk FOREIGN KEY (usagezone_equippedwith_id)
REFERENCES ng_usagezone (id)
ON DELETE SET NULL;

ALTER TABLE ng_facilities ADD CONSTRAINT ng_facilitie_operatio_fk FOREIGN KEY (operationschedule_id)
REFERENCES ng_schedule (id)
ON DELETE SET NULL;

ALTER TABLE ng_facilities ADD CONSTRAINT ng_facili_build_equip_fk FOREIGN KEY (buildingunit_equippedwith_id)
REFERENCES ng_buildingunit (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_floorarea 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_floorarea ADD CONSTRAINT ng_floora_build_floor_fk FOREIGN KEY (building_floorarea_id)
REFERENCES ng_building (id);

ALTER TABLE ng_floorarea ADD CONSTRAINT ng_floora_therm_floor_fk FOREIGN KEY (thermalzone_floorarea_id)
REFERENCES ng_thermalzone (id);

ALTER TABLE ng_floorarea ADD CONSTRAINT ng_floora_usage_floor_fk FOREIGN KEY (usagezone_floorarea_id)
REFERENCES ng_usagezone (id);

ALTER TABLE ng_floorarea ADD CONSTRAINT ng_floor_build_floo_fk_1 FOREIGN KEY (buildingunit_floorarea_id)
REFERENCES ng_buildingunit (id);

-- -------------------------------------------------------------------- 
-- ng_gas 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_gas ADD CONSTRAINT ng_gas_fk FOREIGN KEY (id)
REFERENCES ng_material (id);

-- -------------------------------------------------------------------- 
-- ng_heatexchanger 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_heatexchanger ADD CONSTRAINT ng_heatexchanger_fk FOREIGN KEY (id)
REFERENCES ng_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- ng_heatpump 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_heatpump ADD CONSTRAINT ng_heatpump_fk FOREIGN KEY (id)
REFERENCES ng_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- ng_heightaboveground 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_heightaboveground ADD CONSTRAINT ng_height_build_heigh_fk FOREIGN KEY (building_heightabovegroun_id)
REFERENCES ng_building (id);

-- -------------------------------------------------------------------- 
-- ng_household 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_household ADD CONSTRAINT ng_household_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_household ADD CONSTRAINT ng_househ_occup_house_fk FOREIGN KEY (occupants_household_id)
REFERENCES ng_occupants (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_imagetexture 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_imagetexture ADD CONSTRAINT ng_imagetexture_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- ng_irregulartimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_irregulartimeseries ADD CONSTRAINT ng_irregulartimeserie_fk FOREIGN KEY (id)
REFERENCES ng_timeseries (id);

-- -------------------------------------------------------------------- 
-- ng_irregulartimeseriesf 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_irregulartimeseriesf ADD CONSTRAINT ng_irregulartimeser_fk_1 FOREIGN KEY (id)
REFERENCES ng_timeseries (id);

-- -------------------------------------------------------------------- 
-- ng_layer 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_layer ADD CONSTRAINT ng_layer_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_layer ADD CONSTRAINT ng_layer_constr_layer_fk FOREIGN KEY (construction_layer_id)
REFERENCES ng_construction_1 (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_layercomponent 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_layercomponent ADD CONSTRAINT ng_layercomponent_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_layercomponent ADD CONSTRAINT ng_layercomp_servicel_fk FOREIGN KEY (servicelife_id)
REFERENCES ng_servicelife (id)
ON DELETE SET NULL;

ALTER TABLE ng_layercomponent ADD CONSTRAINT ng_layerc_layer_layer_fk FOREIGN KEY (layer_layercomponent_id)
REFERENCES ng_layer (id)
ON DELETE SET NULL;

ALTER TABLE ng_layercomponent ADD CONSTRAINT ng_layercomp_material_fk FOREIGN KEY (material_id)
REFERENCES ng_material (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_material 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_material ADD CONSTRAINT ng_material_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_material ADD CONSTRAINT ng_material_objectcla_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE ng_material ADD CONSTRAINT ng_material_imagetext_fk FOREIGN KEY (imagetexture_id)
REFERENCES ng_imagetexture (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_measurementpoint 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_measurementpoint ADD CONSTRAINT ng_measur_irreg_conta_fk FOREIGN KEY (irregulartimeser_contains_id)
REFERENCES ng_irregulartimeseries (id);

-- -------------------------------------------------------------------- 
-- ng_mechanicalventilatio 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_mechanicalventilatio ADD CONSTRAINT ng_mechanicalventilat_fk FOREIGN KEY (id)
REFERENCES ng_energyconversionsyst (id);

-- -------------------------------------------------------------------- 
-- ng_occupants 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_occupants ADD CONSTRAINT ng_occupants_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_occupants ADD CONSTRAINT ng_occupants_heatdiss_fk FOREIGN KEY (heatdissipation_id)
REFERENCES ng_heatexchangetype (id)
ON DELETE SET NULL;

ALTER TABLE ng_occupants ADD CONSTRAINT ng_occupa_usage_occup_fk FOREIGN KEY (usagezone_occupiedby_id)
REFERENCES ng_usagezone (id)
ON DELETE SET NULL;

ALTER TABLE ng_occupants ADD CONSTRAINT ng_occupants_occupanc_fk FOREIGN KEY (occupancyrate_id)
REFERENCES ng_schedule (id)
ON DELETE SET NULL;

ALTER TABLE ng_occupants ADD CONSTRAINT ng_occupa_build_occup_fk FOREIGN KEY (buildingunit_occupiedby_id)
REFERENCES ng_buildingunit (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_periodofyear 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_periodofyear ADD CONSTRAINT ng_period_sched_perio_fk FOREIGN KEY (schedule_periodofyear_id)
REFERENCES ng_schedule (id);

-- -------------------------------------------------------------------- 
-- ng_photovoltaicsystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_photovoltaicsystem ADD CONSTRAINT ng_photovoltaicsystem_fk FOREIGN KEY (id)
REFERENCES ng_solarenergysystem (id);

-- -------------------------------------------------------------------- 
-- ng_photovoltaicthermals 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_photovoltaicthermals ADD CONSTRAINT ng_photovoltaictherma_fk FOREIGN KEY (id)
REFERENCES ng_solarenergysystem (id);

-- -------------------------------------------------------------------- 
-- ng_powerdistributionsys 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_powerdistributionsys ADD CONSTRAINT ng_powerdistributions_fk FOREIGN KEY (id)
REFERENCES ng_energydistributionsy (id);

-- -------------------------------------------------------------------- 
-- ng_powerstoragesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_powerstoragesystem ADD CONSTRAINT ng_powerstoragesystem_fk FOREIGN KEY (id)
REFERENCES ng_storagesystem (id);

-- -------------------------------------------------------------------- 
-- ng_reflectance 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_reflectance ADD CONSTRAINT ng_reflec_optic_refle_fk FOREIGN KEY (opticalproper_reflectance_id)
REFERENCES ng_opticalproperties (id);

-- -------------------------------------------------------------------- 
-- ng_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_refurbishmentmeasure ADD CONSTRAINT ng_refurb_build_refur_fk FOREIGN KEY (building_refurbishmentmea_id)
REFERENCES ng_building (id);

ALTER TABLE ng_refurbishmentmeasure ADD CONSTRAINT ng_refurbishment_date_fk FOREIGN KEY (date_id)
REFERENCES ng_dateofevent (id)
ON DELETE SET NULL;

ALTER TABLE ng_refurbishmentmeasure ADD CONSTRAINT ng_refurb_therm_refur_fk FOREIGN KEY (thermalbound_refurbishmen_id)
REFERENCES ng_thermalboundary (id);

-- -------------------------------------------------------------------- 
-- ng_regulartimeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_regulartimeseries ADD CONSTRAINT ng_regulartimeseries_fk FOREIGN KEY (id)
REFERENCES ng_timeseries (id);

-- -------------------------------------------------------------------- 
-- ng_regulartimeseriesfil 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_regulartimeseriesfil ADD CONSTRAINT ng_regulartimeseriesf_fk FOREIGN KEY (id)
REFERENCES ng_timeseries (id);

-- -------------------------------------------------------------------- 
-- ng_schedule 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_schedule ADD CONSTRAINT ng_schedule_objectcla_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE ng_schedule ADD CONSTRAINT ng_schedule_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_schedule ADD CONSTRAINT ng_schedule_timedepen_fk FOREIGN KEY (timedependingvalues_id)
REFERENCES ng_timeseries (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_servicelife 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_servicelife ADD CONSTRAINT ng_servicelife_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- ng_shadingtype 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_shadingtype ADD CONSTRAINT ng_shadingty_transmit_fk FOREIGN KEY (transmittance_id)
REFERENCES ng_transmittance (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_solarenergysystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_solarenergysystem ADD CONSTRAINT ng_solarenergysystem_fk FOREIGN KEY (id)
REFERENCES ng_energyconversionsyst (id);

ALTER TABLE ng_solarenergysystem ADD CONSTRAINT ng_solarener_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE ng_solarenergysystem ADD CONSTRAINT ng_solarener_installe_fk FOREIGN KEY (installedonboundarysurfac_id)
REFERENCES thematic_surface (id)
ON DELETE SET NULL;

ALTER TABLE ng_solarenergysystem ADD CONSTRAINT ng_solarene_install_fk_1 FOREIGN KEY (installedonbuildinginstal_id)
REFERENCES building_installation (id)
ON DELETE SET NULL;

ALTER TABLE ng_solarenergysystem ADD CONSTRAINT ng_solarener_surfaceg_fk FOREIGN KEY (surfacegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- ng_solarthermalsystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_solarthermalsystem ADD CONSTRAINT ng_solarthermalsystem_fk FOREIGN KEY (id)
REFERENCES ng_solarenergysystem (id);

-- -------------------------------------------------------------------- 
-- ng_solidmaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_solidmaterial ADD CONSTRAINT ng_solidmaterial_fk FOREIGN KEY (id)
REFERENCES ng_material (id);

-- -------------------------------------------------------------------- 
-- ng_storagesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_storagesystem ADD CONSTRAINT ng_storagesystem_fk FOREIGN KEY (id)
REFERENCES ng_energysystem (id);

ALTER TABLE ng_storagesystem ADD CONSTRAINT ng_storagesy_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- ng_systemoperation 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_systemoperation ADD CONSTRAINT ng_systemoperation_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_systemoperation ADD CONSTRAINT ng_systemope_operatio_fk FOREIGN KEY (operationtime_id)
REFERENCES ng_schedule (id)
ON DELETE SET NULL;

ALTER TABLE ng_systemoperation ADD CONSTRAINT ng_systemo_energy_has_fk FOREIGN KEY (energyconversionsyste_has_id)
REFERENCES ng_energyconversionsyst (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_ther_deli_to_the_bou ADD CONSTRAINT ng_the_del_to_the_bou_fk FOREIGN KEY (thermalboundary_delimits_id)
REFERENCES ng_thermalboundary (id)
ON DELETE CASCADE;

ALTER TABLE ng_ther_deli_to_the_bou ADD CONSTRAINT eng_the_del_to_the_bo_fk_1 FOREIGN KEY (thermalzone_boundedby_id)
REFERENCES ng_thermalzone (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_therm_to_thema_surfa ADD CONSTRAINT ng_ther_to_them_surf_fk1 FOREIGN KEY (thermalboundary_id)
REFERENCES ng_thermalboundary (id)
ON DELETE CASCADE;

ALTER TABLE ng_therm_to_thema_surfa ADD CONSTRAINT ng_ther_to_them_surf_fk2 FOREIGN KEY (thematic_surface_id)
REFERENCES thematic_surface (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_thermalboundary 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalboundary ADD CONSTRAINT ng_thermalboundary_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_thermalboundary ADD CONSTRAINT ng_thermalbo_construc_fk FOREIGN KEY (construction_id)
REFERENCES ng_construction (id)
ON DELETE SET NULL;

ALTER TABLE ng_thermalboundary ADD CONSTRAINT ng_thermalbo_surfaceg_fk FOREIGN KEY (surfacegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- ng_thermaldistributions 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermaldistributions ADD CONSTRAINT ng_thermaldistributio_fk FOREIGN KEY (id)
REFERENCES ng_energydistributionsy (id);

-- -------------------------------------------------------------------- 
-- ng_thermalop_to_opening 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalop_to_opening ADD CONSTRAINT ng_thermal_to_openin_fk1 FOREIGN KEY (thermalopening_id)
REFERENCES ng_thermalopening (id)
ON DELETE CASCADE;

ALTER TABLE ng_thermalop_to_opening ADD CONSTRAINT ng_thermal_to_openin_fk2 FOREIGN KEY (opening_id)
REFERENCES opening (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_thermalopening 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalopening ADD CONSTRAINT ng_thermalopening_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_thermalopening ADD CONSTRAINT ng_thermalop_construc_fk FOREIGN KEY (construction_id)
REFERENCES ng_construction (id)
ON DELETE SET NULL;

ALTER TABLE ng_thermalopening ADD CONSTRAINT ng_thermalop_indoorsh_fk FOREIGN KEY (indoorshading_id)
REFERENCES ng_shadingtype (id)
ON DELETE SET NULL;

ALTER TABLE ng_thermalopening ADD CONSTRAINT ng_thermalop_outdoors_fk FOREIGN KEY (outdoorshading_id)
REFERENCES ng_shadingtype (id)
ON DELETE SET NULL;

ALTER TABLE ng_thermalopening ADD CONSTRAINT ng_therma_therm_conta_fk FOREIGN KEY (thermalboundary_contains_id)
REFERENCES ng_thermalboundary (id)
ON DELETE SET NULL;

ALTER TABLE ng_thermalopening ADD CONSTRAINT ng_thermalop_surfaceg_fk FOREIGN KEY (surfacegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- ng_thermalstoragesystem 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalstoragesystem ADD CONSTRAINT ng_thermalstoragesyst_fk FOREIGN KEY (id)
REFERENCES ng_storagesystem (id);

-- -------------------------------------------------------------------- 
-- ng_thermalzone 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalzone ADD CONSTRAINT ng_thermalzone_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_thermalzone ADD CONSTRAINT ng_therma_build_therm_fk FOREIGN KEY (building_thermalzone_id)
REFERENCES ng_building (id)
ON DELETE SET NULL;

ALTER TABLE ng_thermalzone ADD CONSTRAINT ng_thermalzo_volumege_fk FOREIGN KEY (volumegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- ng_thermalzone_to_room 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_thermalzone_to_room ADD CONSTRAINT ng_thermalzo_to_room_fk1 FOREIGN KEY (thermalzone_id)
REFERENCES ng_thermalzone (id)
ON DELETE CASCADE;

ALTER TABLE ng_thermalzone_to_room ADD CONSTRAINT ng_thermalzo_to_room_fk2 FOREIGN KEY (room_id)
REFERENCES room (id)
ON DELETE CASCADE;

-- -------------------------------------------------------------------- 
-- ng_timeseries 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_timeseries ADD CONSTRAINT ng_timeseries_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_timeseries ADD CONSTRAINT ng_timeserie_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- ng_transmittance 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_transmittance ADD CONSTRAINT ng_transm_optic_trans_fk FOREIGN KEY (opticalprope_transmittanc_id)
REFERENCES ng_opticalproperties (id);

-- -------------------------------------------------------------------- 
-- ng_usagezone 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_usagezone ADD CONSTRAINT ng_usagezone_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_usagezone ADD CONSTRAINT ng_usagez_build_usage_fk FOREIGN KEY (building_usagezone_id)
REFERENCES ng_building (id)
ON DELETE SET NULL;

ALTER TABLE ng_usagezone ADD CONSTRAINT ng_usagez_therm_conta_fk FOREIGN KEY (thermalzone_contains_id)
REFERENCES ng_thermalzone (id)
ON DELETE SET NULL;

ALTER TABLE ng_usagezone ADD CONSTRAINT ng_usagezone_averagei_fk FOREIGN KEY (averageinternalgains_id)
REFERENCES ng_heatexchangetype (id)
ON DELETE SET NULL;

ALTER TABLE ng_usagezone ADD CONSTRAINT ng_usagezone_coolings_fk FOREIGN KEY (coolingschedule_id)
REFERENCES ng_schedule (id)
ON DELETE SET NULL;

ALTER TABLE ng_usagezone ADD CONSTRAINT ng_usagezone_heatings_fk FOREIGN KEY (heatingschedule_id)
REFERENCES ng_schedule (id)
ON DELETE SET NULL;

ALTER TABLE ng_usagezone ADD CONSTRAINT ng_usagezone_ventilat_fk FOREIGN KEY (ventilationschedule_id)
REFERENCES ng_schedule (id)
ON DELETE SET NULL;

ALTER TABLE ng_usagezone ADD CONSTRAINT ng_usagezone_volumege_fk FOREIGN KEY (volumegeometry_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- ng_volumetype 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_volumetype ADD CONSTRAINT ng_volume_build_volum_fk FOREIGN KEY (building_volume_id)
REFERENCES ng_building (id);

ALTER TABLE ng_volumetype ADD CONSTRAINT ng_volume_therm_volum_fk FOREIGN KEY (thermalzone_volume_id)
REFERENCES ng_thermalzone (id);

-- -------------------------------------------------------------------- 
-- ng_weatherdata 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_weatherdata ADD CONSTRAINT ng_weatherdata_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE ng_weatherdata ADD CONSTRAINT ng_weatherdata_values_fk FOREIGN KEY (values_id)
REFERENCES ng_timeseries (id)
ON DELETE SET NULL;

ALTER TABLE ng_weatherdata ADD CONSTRAINT ng_weathe_cityo_weath_fk FOREIGN KEY (cityobject_weatherdata_id)
REFERENCES ng_cityobject (id)
ON DELETE SET NULL;

ALTER TABLE ng_weatherdata ADD CONSTRAINT ng_weathe_weath_param_fk FOREIGN KEY (weatherstation_parameter_id)
REFERENCES ng_weatherstation (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- ng_weatherstation 
-- -------------------------------------------------------------------- 
ALTER TABLE ng_weatherstation ADD CONSTRAINT ng_weatherstation_fk FOREIGN KEY (id)
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
-- ng_building 
-- -------------------------------------------------------------------- 
DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='ng_BUILDING' AND COLUMN_NAME='REFERENCEPOINT';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('ng_BUILDING','REFERENCEPOINT',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX ng_building_referenc_spx ON ng_building (referencepoint) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

-- -------------------------------------------------------------------- 
-- ng_buildingu_to_address 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_buildi_to_addres_fk2x ON ng_buildingu_to_address (address_id);

CREATE INDEX ng_buildi_to_addres_fk1x ON ng_buildingu_to_address (buildingunit_id);

-- -------------------------------------------------------------------- 
-- ng_buildingunit 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_build_usage_conta_fkx ON ng_buildingunit (usagezone_contains_id);

-- -------------------------------------------------------------------- 
-- ng_construction 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_construc_basecons_fkx ON ng_construction (baseconstruction_id);

CREATE INDEX ng_const_build_aggre_fkx ON ng_construction (building_aggregatedbuildi_id);

-- -------------------------------------------------------------------- 
-- ng_construction_1 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_construc_opticalp_fkx ON ng_construction_1 (opticalproperties_id);

CREATE INDEX ng_construc_servicel_fkx ON ng_construction_1 (servicelife_id);

-- -------------------------------------------------------------------- 
-- ng_dailyschedule 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_daily_perio_daily_fkx ON ng_dailyschedule (periodofyear_dailyschedul_id);

CREATE INDEX ng_dailysch_schedule_fkx ON ng_dailyschedule (schedule_id);

-- -------------------------------------------------------------------- 
-- ng_emissivity 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_emiss_optic_emiss_fkx ON ng_emissivity (opticalpropert_emissivity_id);

-- -------------------------------------------------------------------- 
-- ng_emit_emit_to_ene_ise 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_emi_emi_to_ene_ise_fk ON ng_emit_emit_to_ene_ise (emittersystem_emitts_id);

CREATE INDEX eng_emi_emi_to_ene_is_fk_1 ON ng_emit_emit_to_ene_ise (energyflow_isemittedby_id);

-- -------------------------------------------------------------------- 
-- ng_emittersystem 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_emitters_thermale_fkx ON ng_emittersystem (thermalexchange_id);

-- -------------------------------------------------------------------- 
-- ng_ener_dist_to_ene_isd 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_ene_dis_to_ene_isd_fk ON ng_ener_dist_to_ene_isd (energydistrib_distributes_id);

CREATE INDEX eng_ene_dis_to_ene_is_fk_1 ON ng_ener_dist_to_ene_isd (energyflow_isdistributedb_id);

-- -------------------------------------------------------------------- 
-- ng_ener_isst_to_sto_sto 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_ene_iss_to_sto_sto_fk ON ng_ener_isst_to_sto_sto (energyflow_isstoredby_id);

CREATE INDEX eng_ene_iss_to_sto_st_fk_1 ON ng_ener_isst_to_sto_sto (storagesystem_stores_id);

-- -------------------------------------------------------------------- 
-- ng_ener_prov_to_ene_isp 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_ene_pro_to_ene_isp_fk ON ng_ener_prov_to_ene_isp (energyconversion_provides_id);

CREATE INDEX eng_ene_pro_to_ene_is_fk_1 ON ng_ener_prov_to_ene_isp (energyflow_isprovidedby_id);

-- -------------------------------------------------------------------- 
-- ng_energyconversionsyst 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_energyco_objectcl_fkx ON ng_energyconversionsyst (objectclass_id);

-- -------------------------------------------------------------------- 
-- ng_energyde_to_cityobje 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_energ_to_cityo_fk2x_1 ON ng_energyde_to_cityobje (cityobject_id);

CREATE INDEX ng_energ_to_cityo_fk1x_1 ON ng_energyde_to_cityobje (energydemand_id);

-- -------------------------------------------------------------------- 
-- ng_energydemand 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_energ_cityo_deman_fkx ON ng_energydemand (cityobject_demands_id);

CREATE INDEX ng_energyde_energyam_fkx ON ng_energydemand (energyamount_id);

-- -------------------------------------------------------------------- 
-- ng_energydistributionsy 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_energydi_objectcl_fkx ON ng_energydistributionsy (objectclass_id);

-- -------------------------------------------------------------------- 
-- ng_energyflow 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_energyfl_energyam_fkx ON ng_energyflow (energyamount_id);

-- -------------------------------------------------------------------- 
-- ng_energyperformancecer 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_energ_build_energ_fkx ON ng_energyperformancecer (building_energyperformanc_id);

CREATE INDEX ng_energ_buil_ener_fkx_1 ON ng_energyperformancecer (buildingunit_energyperfor_id);

-- -------------------------------------------------------------------- 
-- ng_energysy_to_cityobje 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_energy_to_cityob_fk2x ON ng_energysy_to_cityobje (cityobject_id);

CREATE INDEX ng_energy_to_cityob_fk1x ON ng_energysy_to_cityobje (energysystem_id);

-- -------------------------------------------------------------------- 
-- ng_energysystem 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_energysy_objectcl_fkx ON ng_energysystem (objectclass_id);

CREATE INDEX ng_energysy_servicel_fkx ON ng_energysystem (servicelife_id);

-- -------------------------------------------------------------------- 
-- ng_facilities 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_facil_build_equip_fkx ON ng_facilities (buildingunit_equippedwith_id);

CREATE INDEX ng_faciliti_heatdiss_fkx ON ng_facilities (heatdissipation_id);

CREATE INDEX ng_faciliti_objectcl_fkx ON ng_facilities (objectclass_id);

CREATE INDEX ng_faciliti_operatio_fkx ON ng_facilities (operationschedule_id);

CREATE INDEX ng_facil_usage_equip_fkx ON ng_facilities (usagezone_equippedwith_id);

-- -------------------------------------------------------------------- 
-- ng_floorarea 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_floor_build_floor_fkx ON ng_floorarea (building_floorarea_id);

CREATE INDEX ng_floor_buil_floo_fkx_1 ON ng_floorarea (buildingunit_floorarea_id);

CREATE INDEX ng_floor_therm_floor_fkx ON ng_floorarea (thermalzone_floorarea_id);

CREATE INDEX ng_floor_usage_floor_fkx ON ng_floorarea (usagezone_floorarea_id);

-- -------------------------------------------------------------------- 
-- ng_heightaboveground 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_heigh_build_heigh_fkx ON ng_heightaboveground (building_heightabovegroun_id);

-- -------------------------------------------------------------------- 
-- ng_household 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_house_occup_house_fkx ON ng_household (occupants_household_id);

-- -------------------------------------------------------------------- 
-- ng_layer 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_layer_const_layer_fkx ON ng_layer (construction_layer_id);

-- -------------------------------------------------------------------- 
-- ng_layercomponent 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_layer_layer_layer_fkx ON ng_layercomponent (layer_layercomponent_id);

CREATE INDEX ng_layercom_material_fkx ON ng_layercomponent (material_id);

CREATE INDEX ng_layercom_servicel_fkx ON ng_layercomponent (servicelife_id);

-- -------------------------------------------------------------------- 
-- ng_material 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_material_imagetex_fkx ON ng_material (imagetexture_id);

CREATE INDEX ng_material_objectcl_fkx ON ng_material (objectclass_id);

-- -------------------------------------------------------------------- 
-- ng_measurementpoint 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_measu_irreg_conta_fkx ON ng_measurementpoint (irregulartimeser_contains_id);

-- -------------------------------------------------------------------- 
-- ng_occupants 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_occup_build_occup_fkx ON ng_occupants (buildingunit_occupiedby_id);

CREATE INDEX ng_occupant_heatdiss_fkx ON ng_occupants (heatdissipation_id);

CREATE INDEX ng_occupant_occupanc_fkx ON ng_occupants (occupancyrate_id);

CREATE INDEX ng_occup_usage_occup_fkx ON ng_occupants (usagezone_occupiedby_id);

-- -------------------------------------------------------------------- 
-- ng_periodofyear 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_perio_sched_perio_fkx ON ng_periodofyear (schedule_periodofyear_id);

-- -------------------------------------------------------------------- 
-- ng_reflectance 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_refle_optic_refle_fkx ON ng_reflectance (opticalproper_reflectance_id);

-- -------------------------------------------------------------------- 
-- ng_refurbishmentmeasure 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_refur_build_refur_fkx ON ng_refurbishmentmeasure (building_refurbishmentmea_id);

CREATE INDEX ng_refurbishmen_date_fkx ON ng_refurbishmentmeasure (date_id);

CREATE INDEX ng_refur_therm_refur_fkx ON ng_refurbishmentmeasure (thermalbound_refurbishmen_id);

-- -------------------------------------------------------------------- 
-- ng_schedule 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_schedule_objectcl_fkx ON ng_schedule (objectclass_id);

CREATE INDEX ng_schedule_timedepe_fkx ON ng_schedule (timedependingvalues_id);

-- -------------------------------------------------------------------- 
-- ng_shadingtype 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_shadingt_transmit_fkx ON ng_shadingtype (transmittance_id);

-- -------------------------------------------------------------------- 
-- ng_solarenergysystem 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_solarene_installe_fkx ON ng_solarenergysystem (installedonboundarysurfac_id);

CREATE INDEX ng_solaren_install_fkx_1 ON ng_solarenergysystem (installedonbuildinginstal_id);

CREATE INDEX ng_solarene_objectcl_fkx ON ng_solarenergysystem (objectclass_id);

CREATE INDEX ng_solarene_surfaceg_fkx ON ng_solarenergysystem (surfacegeometry_id);

-- -------------------------------------------------------------------- 
-- ng_storagesystem 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_storages_objectcl_fkx ON ng_storagesystem (objectclass_id);

-- -------------------------------------------------------------------- 
-- ng_systemoperation 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_system_energy_has_fkx ON ng_systemoperation (energyconversionsyste_has_id);

CREATE INDEX ng_systemop_operatio_fkx ON ng_systemoperation (operationtime_id);

-- -------------------------------------------------------------------- 
-- ng_ther_deli_to_the_bou 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_the_del_to_the_bou_fk ON ng_ther_deli_to_the_bou (thermalboundary_delimits_id);

CREATE INDEX eng_the_del_to_the_bo_fk_1 ON ng_ther_deli_to_the_bou (thermalzone_boundedby_id);

-- -------------------------------------------------------------------- 
-- ng_therm_to_thema_surfa 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_ther_to_them_surf_fk2 ON ng_therm_to_thema_surfa (thematic_surface_id);

CREATE INDEX ng_ther_to_them_surf_fk1 ON ng_therm_to_thema_surfa (thermalboundary_id);

-- -------------------------------------------------------------------- 
-- ng_thermalboundary 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_thermalb_construc_fkx ON ng_thermalboundary (construction_id);

CREATE INDEX ng_thermalb_surfaceg_fkx ON ng_thermalboundary (surfacegeometry_id);

-- -------------------------------------------------------------------- 
-- ng_thermalop_to_opening 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_therma_to_openin_fk2x ON ng_thermalop_to_opening (opening_id);

CREATE INDEX ng_therma_to_openin_fk1x ON ng_thermalop_to_opening (thermalopening_id);

-- -------------------------------------------------------------------- 
-- ng_thermalopening 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_thermalo_construc_fkx ON ng_thermalopening (construction_id);

CREATE INDEX ng_thermalo_indoorsh_fkx ON ng_thermalopening (indoorshading_id);

CREATE INDEX ng_thermalo_outdoors_fkx ON ng_thermalopening (outdoorshading_id);

CREATE INDEX ng_thermalo_surfaceg_fkx ON ng_thermalopening (surfacegeometry_id);

CREATE INDEX ng_therm_therm_conta_fkx ON ng_thermalopening (thermalboundary_contains_id);

-- -------------------------------------------------------------------- 
-- ng_thermalzone 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_therm_build_therm_fkx ON ng_thermalzone (building_thermalzone_id);

CREATE INDEX ng_thermalz_volumege_fkx ON ng_thermalzone (volumegeometry_id);

-- -------------------------------------------------------------------- 
-- ng_thermalzone_to_room 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_thermalz_to_room_fk2x ON ng_thermalzone_to_room (room_id);

CREATE INDEX ng_thermalz_to_room_fk1x ON ng_thermalzone_to_room (thermalzone_id);

-- -------------------------------------------------------------------- 
-- ng_timeseries 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_timeseri_objectcl_fkx ON ng_timeseries (objectclass_id);

-- -------------------------------------------------------------------- 
-- ng_transmittance 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_trans_optic_trans_fkx ON ng_transmittance (opticalprope_transmittanc_id);

-- -------------------------------------------------------------------- 
-- ng_usagezone 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_usagezon_averagei_fkx ON ng_usagezone (averageinternalgains_id);

CREATE INDEX ng_usage_build_usage_fkx ON ng_usagezone (building_usagezone_id);

CREATE INDEX ng_usagezon_coolings_fkx ON ng_usagezone (coolingschedule_id);

CREATE INDEX ng_usagezon_heatings_fkx ON ng_usagezone (heatingschedule_id);

CREATE INDEX ng_usage_therm_conta_fkx ON ng_usagezone (thermalzone_contains_id);

CREATE INDEX ng_usagezon_ventilat_fkx ON ng_usagezone (ventilationschedule_id);

CREATE INDEX ng_usagezon_volumege_fkx ON ng_usagezone (volumegeometry_id);

-- -------------------------------------------------------------------- 
-- ng_volumetype 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_volum_build_volum_fkx ON ng_volumetype (building_volume_id);

CREATE INDEX ng_volum_therm_volum_fkx ON ng_volumetype (thermalzone_volume_id);

-- -------------------------------------------------------------------- 
-- ng_weatherdata 
-- -------------------------------------------------------------------- 
CREATE INDEX ng_weath_cityo_weath_fkx ON ng_weatherdata (cityobject_weatherdata_id);

DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='ng_WEATHERDATA' AND COLUMN_NAME='POSITION';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('ng_WEATHERDATA','POSITION',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX ng_weatherd_position_spx ON ng_weatherdata (position) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

CREATE INDEX ng_weatherdat_values_fkx ON ng_weatherdata (values_id);

CREATE INDEX ng_weath_weath_param_fkx ON ng_weatherdata (weatherstation_parameter_id);

-- -------------------------------------------------------------------- 
-- ng_weatherstation 
-- -------------------------------------------------------------------- 
DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME='ng_WEATHERSTATION' AND COLUMN_NAME='POSITION';
INSERT INTO USER_SDO_GEOM_METADATA (TABLE_NAME, COLUMN_NAME, DIMINFO, SRID)
VALUES ('ng_WEATHERSTATION','POSITION',
MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', 0.000, 10000000.000, 0.0005), MDSYS.SDO_DIM_ELEMENT('Y', 0.000, 10000000.000, 0.0005),MDSYS.SDO_DIM_ELEMENT('Z', -1000, 10000, 0.0005)), &SRSNO);
CREATE INDEX ng_weathers_position_spx ON ng_weatherstation (position) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create Sequences *********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

CREATE SEQUENCE ng_energyperformanc_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_volumetype_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_refurbishmentmea_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_floorarea_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_heightabovegroun_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_dateofevent_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_heatexchangetype_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_shadingtype_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_transmittance_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_opticalpropertie_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_emissivity_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_reflectance_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_timevaluesproper_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_periodofyear_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_dailyschedule_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

CREATE SEQUENCE ng_measurementpoint_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 CACHE 10000;

