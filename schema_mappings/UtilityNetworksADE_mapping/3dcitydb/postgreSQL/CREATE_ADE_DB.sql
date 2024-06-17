-- This document was automatically created by the ADE-Manager tool of 3DCityDB (https://www.3dcitydb.org) on 2019-03-13 12:45:06 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create tables ************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- util_actor 
-- -------------------------------------------------------------------- 
CREATE TABLE util_actor
(
    id INTEGER NOT NULL,
    address_id INTEGER,
    name VARCHAR(1000),
    networkfeature_operator_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_actuator 
-- -------------------------------------------------------------------- 
CREATE TABLE util_actuator
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_building 
-- -------------------------------------------------------------------- 
CREATE TABLE util_building
(
    id INTEGER NOT NULL,
    buildinghabitants INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_cable 
-- -------------------------------------------------------------------- 
CREATE TABLE util_cable
(
    id INTEGER NOT NULL,
    crosssection NUMERIC,
    crosssection_uom VARCHAR(1000),
    iscommunication NUMERIC,
    ispower NUMERIC,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_canal 
-- -------------------------------------------------------------------- 
CREATE TABLE util_canal
(
    id INTEGER NOT NULL,
    exteriordiameter NUMERIC,
    exteriordiameter_uom VARCHAR(1000),
    exteriorheight NUMERIC,
    exteriorheight_uom VARCHAR(1000),
    exteriorwidth NUMERIC,
    exteriorwidth_uom VARCHAR(1000),
    isgravity NUMERIC,
    objectclass_id INTEGER,
    profilename VARCHAR(1000),
    slope NUMERIC,
    slope_uom VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_chemicalclassifier 
-- -------------------------------------------------------------------- 
CREATE TABLE util_chemicalclassifier
(
    id INTEGER NOT NULL,
    casno VARCHAR(1000),
    ecno VARCHAR(1000),
    iuclidchemicaldatasheet VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_cityobject 
-- -------------------------------------------------------------------- 
CREATE TABLE util_cityobject
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_commodity 
-- -------------------------------------------------------------------- 
CREATE TABLE util_commodity
(
    id INTEGER NOT NULL,
    objectclass_id INTEGER,
    owner VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_complexfunctionalcom 
-- -------------------------------------------------------------------- 
CREATE TABLE util_complexfunctionalcom
(
    id INTEGER NOT NULL,
    class VARCHAR(1000),
    class_codespace VARCHAR(1000),
    objectclass_id INTEGER,
    switch TEXT,
    transformerend TEXT,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_conductor 
-- -------------------------------------------------------------------- 
CREATE TABLE util_conductor
(
    id INTEGER NOT NULL,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_connectioncomponent 
-- -------------------------------------------------------------------- 
CREATE TABLE util_connectioncomponent
(
    id INTEGER NOT NULL,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_connector 
-- -------------------------------------------------------------------- 
CREATE TABLE util_connector
(
    id INTEGER NOT NULL,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_controllercomponent 
-- -------------------------------------------------------------------- 
CREATE TABLE util_controllercomponent
(
    id INTEGER NOT NULL,
    actuator TEXT,
    class VARCHAR(1000),
    class_codespace VARCHAR(1000),
    objectclass_id INTEGER,
    regulator TEXT,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_distributionelement 
-- -------------------------------------------------------------------- 
CREATE TABLE util_distributionelement
(
    id INTEGER NOT NULL,
    class VARCHAR(1000),
    class_codespace VARCHAR(1000),
    functionofline VARCHAR(1000),
    functionofline_codespace VARCHAR(1000),
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_electricalmedium 
-- -------------------------------------------------------------------- 
CREATE TABLE util_electricalmedium
(
    id INTEGER NOT NULL,
    amperagerange NUMERIC,
    amperagerange_uom VARCHAR(1000),
    bandwidth NUMERIC,
    bandwidth_uom VARCHAR(1000),
    type VARCHAR(1000),
    voltagerange NUMERIC,
    voltagerange_uom VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_featuregraph 
-- -------------------------------------------------------------------- 
CREATE TABLE util_featuregraph
(
    id INTEGER NOT NULL,
    networkgraph_featuregraph_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_featurematerial 
-- -------------------------------------------------------------------- 
CREATE TABLE util_featurematerial
(
    id INTEGER NOT NULL,
    featuremateria_consistsof_id INTEGER,
    networkfeatur_hasmaterial_id INTEGER,
    objectclass_id INTEGER,
    type VARCHAR(1000),
    type_codespace VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_fillingmaterial 
-- -------------------------------------------------------------------- 
CREATE TABLE util_fillingmaterial
(
    id INTEGER NOT NULL,
    featuremater_consistsoffm_id INTEGER,
    type VARCHAR(1000),
    type_codespace VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_functionalelement 
-- -------------------------------------------------------------------- 
CREATE TABLE util_functionalelement
(
    id INTEGER NOT NULL,
    complexfunct_functionalco_id INTEGER,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_gaseousmedium 
-- -------------------------------------------------------------------- 
CREATE TABLE util_gaseousmedium
(
    id INTEGER NOT NULL,
    concentration NUMERIC,
    concentration_uom VARCHAR(1000),
    electricconductivityrang_uom VARCHAR(1000),
    electricconductivityrange NUMERIC,
    isexplosive NUMERIC,
    islighterthanair NUMERIC,
    pressurerange NUMERIC,
    pressurerange_uom VARCHAR(1000),
    type VARCHAR(1000),
    type_codespace VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_ghsclassifier 
-- -------------------------------------------------------------------- 
CREATE TABLE util_ghsclassifier
(
    id INTEGER NOT NULL,
    casno VARCHAR(1000),
    ecno VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_hazardclass 
-- -------------------------------------------------------------------- 
CREATE TABLE util_hazardclass
(
    id INTEGER NOT NULL,
    categorycode VARCHAR(1000),
    hazardclass VARCHAR(1000),
    pictogramcode VARCHAR(1000),
    pictogramuri VARCHAR(1000),
    statementcode VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_hazardclassifier 
-- -------------------------------------------------------------------- 
CREATE TABLE util_hazardclassifier
(
    id INTEGER NOT NULL,
    boundedby_id INTEGER,
    commodity_isclassifiedby_id INTEGER,
    definescommodity_id INTEGER,
    definesmaterial_id INTEGER,
    featuremater_isclassified_id INTEGER,
    hazardclassi_consistsoffu_id INTEGER,
    hazardclasstyp_pictogramcode VARCHAR(1000),
    hazardclasstyp_statementcode VARCHAR(1000),
    hazardclasstype_categorycode VARCHAR(1000),
    hazardclasstype_hazardclass VARCHAR(1000),
    hazardclasstype_pictogramuri VARCHAR(1000),
    ischemicalcomplex NUMERIC,
    molecularweight NUMERIC,
    molecularweight_uom VARCHAR(1000),
    molformula VARCHAR(1000),
    objectclass_id INTEGER,
    physicalform VARCHAR(1000),
    signalword VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_hollowspace 
-- -------------------------------------------------------------------- 
CREATE TABLE util_hollowspace
(
    id INTEGER NOT NULL,
    containedcommodity_id INTEGER,
    hollowspace_consistsofpar_id INTEGER,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_link 
-- -------------------------------------------------------------------- 
CREATE TABLE util_link
(
    id INTEGER NOT NULL,
    direction VARCHAR(1000),
    end_id INTEGER,
    featuregraph_linkmember_id INTEGER,
    featuregraph_networklinkm_id INTEGER,
    linkcontrol_id INTEGER,
    networkgraph_linkmember_id INTEGER,
    objectclass_id INTEGER,
    realization geometry(GEOMETRYZ),
    start_id INTEGER,
    type VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_linkcontrol 
-- -------------------------------------------------------------------- 
CREATE TABLE util_linkcontrol
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_liquidmedium 
-- -------------------------------------------------------------------- 
CREATE TABLE util_liquidmedium
(
    id INTEGER NOT NULL,
    electricconductivity NUMERIC,
    electricconductivity_uom VARCHAR(1000),
    flammabilityratio NUMERIC,
    flowraterange NUMERIC,
    flowraterange_uom VARCHAR(1000),
    iscorrosive NUMERIC,
    isexplosive NUMERIC,
    phvaluerange NUMERIC,
    phvaluerange_uom VARCHAR(1000),
    pressurerange NUMERIC,
    pressurerange_uom VARCHAR(1000),
    temperaturerange NUMERIC,
    temperaturerange_uom VARCHAR(1000),
    type VARCHAR(1000),
    type_codespace VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_mediumsupply 
-- -------------------------------------------------------------------- 
CREATE TABLE util_mediumsupply
(
    id INTEGER NOT NULL,
    cityobject_mediumsupply_id INTEGER,
    currentsupply_id INTEGER,
    potentialsupply_id INTEGER,
    type VARCHAR(1000),
    type_1 VARCHAR(1000),
    type_2 VARCHAR(1000),
    type_3 VARCHAR(1000),
    type_4 VARCHAR(1000),
    type_codespace VARCHAR(1000),
    type_codespace_1 VARCHAR(1000),
    type_codespace_2 VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_network 
-- -------------------------------------------------------------------- 
CREATE TABLE util_network
(
    id INTEGER NOT NULL,
    class VARCHAR(1000),
    commodity_associatednetwo_id INTEGER,
    function VARCHAR(1000),
    network_subnetwork_id INTEGER,
    network_subordinatenetwor_id INTEGER,
    network_superordinatenetw_id INTEGER,
    supplies_id INTEGER,
    topograph_id INTEGER,
    transportedmedium_id INTEGER,
    usage VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_networkfeature 
-- -------------------------------------------------------------------- 
CREATE TABLE util_networkfeature
(
    id INTEGER NOT NULL,
    dateofconstruction TIMESTAMP WITH TIME ZONE,
    elevationquality VARCHAR(1000),
    featurematerial_usedby_id INTEGER,
    function VARCHAR(1000),
    function_codespace VARCHAR(1000),
    locationquality VARCHAR(1000),
    lod1geometry_brep_id INTEGER,
    lod1geometry_other_geom geometry(GEOMETRYZ),
    network_component_id INTEGER,
    networkfeature_consistsof_id INTEGER,
    networkfeature_contains_id INTEGER,
    objectclass_id INTEGER,
    occupiedhollowspace_id INTEGER,
    owner_id INTEGER,
    status VARCHAR(1000),
    topograph_id INTEGER,
    usage VARCHAR(1000),
    usage_codespace VARCHAR(1000),
    width NUMERIC,
    width_uom VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_networkgraph 
-- -------------------------------------------------------------------- 
CREATE TABLE util_networkgraph
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_node 
-- -------------------------------------------------------------------- 
CREATE TABLE util_node
(
    id INTEGER NOT NULL,
    connectionsignature_id INTEGER,
    featuregraph_nodemember_id INTEGER,
    linkcontrol_id INTEGER,
    realization geometry(GEOMETRYZ),
    type VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_opticalmedium 
-- -------------------------------------------------------------------- 
CREATE TABLE util_opticalmedium
(
    id INTEGER NOT NULL,
    bandwidth NUMERIC,
    bandwidth_uom VARCHAR(1000),
    claddingcrosssection NUMERIC,
    claddingcrosssection_uom VARCHAR(1000),
    corecrosssection NUMERIC,
    corecrosssection_uom VARCHAR(1000),
    modetype VARCHAR(1000),
    type VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_pipe 
-- -------------------------------------------------------------------- 
CREATE TABLE util_pipe
(
    id INTEGER NOT NULL,
    exteriordiameter NUMERIC,
    exteriordiameter_uom VARCHAR(1000),
    exteriorheight NUMERIC,
    exteriorheight_uom VARCHAR(1000),
    exteriorwidth NUMERIC,
    exteriorwidth_uom VARCHAR(1000),
    interiordiameter NUMERIC,
    interiordiameter_uom VARCHAR(1000),
    isgravity NUMERIC,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_protectedswitch 
-- -------------------------------------------------------------------- 
CREATE TABLE util_protectedswitch
(
    id INTEGER NOT NULL,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_protectionshell 
-- -------------------------------------------------------------------- 
CREATE TABLE util_protectionshell
(
    id INTEGER NOT NULL,
    exteriordiameter NUMERIC,
    exteriordiameter_uom VARCHAR(1000),
    exteriorheight NUMERIC,
    exteriorheight_uom VARCHAR(1000),
    exteriorwidth NUMERIC,
    exteriorwidth_uom VARCHAR(1000),
    interiordiameter NUMERIC,
    interiordiameter_uom VARCHAR(1000),
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_rectangularpipe 
-- -------------------------------------------------------------------- 
CREATE TABLE util_rectangularpipe
(
    id INTEGER NOT NULL,
    interiorheight NUMERIC,
    interiorheight_uom VARCHAR(1000),
    interiorwidth NUMERIC,
    interiorwidth_uom VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_rectangularshell 
-- -------------------------------------------------------------------- 
CREATE TABLE util_rectangularshell
(
    id INTEGER NOT NULL,
    interiorheight NUMERIC,
    interiorheight_uom VARCHAR(1000),
    interiorwidth NUMERIC,
    interiorwidth_uom VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_regulator 
-- -------------------------------------------------------------------- 
CREATE TABLE util_regulator
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_roleinnetwork 
-- -------------------------------------------------------------------- 
CREATE TABLE util_roleinnetwork
(
    id INTEGER NOT NULL,
    cityobject_roleinnetwork_id INTEGER,
    functioninnetwork VARCHAR(1000),
    functioninnetwork_codespace VARCHAR(1000),
    network_id INTEGER,
    usageinnetwork VARCHAR(1000),
    usageinnetwork_codespace VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_signature 
-- -------------------------------------------------------------------- 
CREATE TABLE util_signature
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_simplefunctionalcomp 
-- -------------------------------------------------------------------- 
CREATE TABLE util_simplefunctionalcomp
(
    id INTEGER NOT NULL,
    class VARCHAR(1000),
    class_1 VARCHAR(1000),
    class_2 VARCHAR(1000),
    class_3 VARCHAR(1000),
    class_4 VARCHAR(1000),
    class_codespace VARCHAR(1000),
    class_codespace_1 VARCHAR(1000),
    class_codespace_2 VARCHAR(1000),
    class_codespace_3 VARCHAR(1000),
    class_codespace_4 VARCHAR(1000),
    isactive NUMERIC,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_solidmedium 
-- -------------------------------------------------------------------- 
CREATE TABLE util_solidmedium
(
    id INTEGER NOT NULL,
    concentration NUMERIC,
    concentration_uom VARCHAR(1000),
    electricconductivity NUMERIC,
    electricconductivity_uom VARCHAR(1000),
    flammabilityratio NUMERIC,
    isexplosive NUMERIC,
    pressurerange NUMERIC,
    pressurerange_uom VARCHAR(1000),
    type VARCHAR(1000),
    type_codespace VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_storage 
-- -------------------------------------------------------------------- 
CREATE TABLE util_storage
(
    id INTEGER NOT NULL,
    filllevel NUMERIC,
    inflowrate NUMERIC,
    inflowrate_uom VARCHAR(1000),
    maxcapacity NUMERIC,
    maxcapacity_uom VARCHAR(1000),
    mediumsupply_storage_id INTEGER,
    outflowrate NUMERIC,
    outflowrate_uom VARCHAR(1000),
    type VARCHAR(1000),
    type_codespace VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_supply 
-- -------------------------------------------------------------------- 
CREATE TABLE util_supply
(
    id INTEGER NOT NULL,
    flowrate NUMERIC,
    flowrate_uom VARCHAR(1000),
    status VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- util_supplyarea 
-- -------------------------------------------------------------------- 
CREATE TABLE util_supplyarea
(
    id INTEGER NOT NULL,
    suppliedby_id INTEGER,
    PRIMARY KEY (id)
);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create foreign keys ******************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- util_actor 
-- -------------------------------------------------------------------- 
ALTER TABLE util_actor ADD CONSTRAINT util_actor_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_actor ADD CONSTRAINT util_actor_networ_opera_fk FOREIGN KEY (networkfeature_operator_id)
REFERENCES util_networkfeature (id)
ON DELETE SET NULL;

ALTER TABLE util_actor ADD CONSTRAINT util_actor_address_fk FOREIGN KEY (address_id)
REFERENCES address (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_actuator 
-- -------------------------------------------------------------------- 
ALTER TABLE util_actuator ADD CONSTRAINT util_actuator_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- util_building 
-- -------------------------------------------------------------------- 
ALTER TABLE util_building ADD CONSTRAINT util_building_fk FOREIGN KEY (id)
REFERENCES building (id);

-- -------------------------------------------------------------------- 
-- util_cable 
-- -------------------------------------------------------------------- 
ALTER TABLE util_cable ADD CONSTRAINT util_cable_objectclass_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_cable ADD CONSTRAINT util_cable_fk FOREIGN KEY (id)
REFERENCES util_distributionelement (id);

-- -------------------------------------------------------------------- 
-- util_canal 
-- -------------------------------------------------------------------- 
ALTER TABLE util_canal ADD CONSTRAINT util_canal_objectclass_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_canal ADD CONSTRAINT util_canal_fk FOREIGN KEY (id)
REFERENCES util_distributionelement (id);

-- -------------------------------------------------------------------- 
-- util_chemicalclassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE util_chemicalclassifier ADD CONSTRAINT util_chemicalclassifier_fk FOREIGN KEY (id)
REFERENCES util_hazardclassifier (id);

-- -------------------------------------------------------------------- 
-- util_cityobject 
-- -------------------------------------------------------------------- 
ALTER TABLE util_cityobject ADD CONSTRAINT util_cityobject_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- util_commodity 
-- -------------------------------------------------------------------- 
ALTER TABLE util_commodity ADD CONSTRAINT util_commodity_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_commodity ADD CONSTRAINT util_commodity_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- util_complexfunctionalcom 
-- -------------------------------------------------------------------- 
ALTER TABLE util_complexfunctionalcom ADD CONSTRAINT util_complexfu_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_complexfunctionalcom ADD CONSTRAINT util_complexfunctionalc_fk FOREIGN KEY (id)
REFERENCES util_functionalelement (id);

-- -------------------------------------------------------------------- 
-- util_conductor 
-- -------------------------------------------------------------------- 
ALTER TABLE util_conductor ADD CONSTRAINT util_conductor_fk FOREIGN KEY (id)
REFERENCES util_cable (id);

ALTER TABLE util_conductor ADD CONSTRAINT util_conductor_fk_1 FOREIGN KEY (id)
REFERENCES util_cable (id);

ALTER TABLE util_conductor ADD CONSTRAINT util_conductor_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- util_connectioncomponent 
-- -------------------------------------------------------------------- 
ALTER TABLE util_connectioncomponent ADD CONSTRAINT util_connectio_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_connectioncomponent ADD CONSTRAINT util_connectioncomponen_fk FOREIGN KEY (id)
REFERENCES util_simplefunctionalcomp (id);

-- -------------------------------------------------------------------- 
-- util_connector 
-- -------------------------------------------------------------------- 
ALTER TABLE util_connector ADD CONSTRAINT util_connector_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_connector ADD CONSTRAINT util_connector_fk FOREIGN KEY (id)
REFERENCES util_connectioncomponent (id);

ALTER TABLE util_connector ADD CONSTRAINT util_connector_fk_1 FOREIGN KEY (id)
REFERENCES util_connectioncomponent (id);

-- -------------------------------------------------------------------- 
-- util_controllercomponent 
-- -------------------------------------------------------------------- 
ALTER TABLE util_controllercomponent ADD CONSTRAINT util_controlle_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_controllercomponent ADD CONSTRAINT util_controllercomponen_fk FOREIGN KEY (id)
REFERENCES util_simplefunctionalcomp (id);

-- -------------------------------------------------------------------- 
-- util_distributionelement 
-- -------------------------------------------------------------------- 
ALTER TABLE util_distributionelement ADD CONSTRAINT util_distributionelemen_fk FOREIGN KEY (id)
REFERENCES util_networkfeature (id);

ALTER TABLE util_distributionelement ADD CONSTRAINT util_distribut_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- util_electricalmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_electricalmedium ADD CONSTRAINT util_electricalmedium_fk FOREIGN KEY (id)
REFERENCES util_commodity (id);

-- -------------------------------------------------------------------- 
-- util_featuregraph 
-- -------------------------------------------------------------------- 
ALTER TABLE util_featuregraph ADD CONSTRAINT util_featuregraph_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_featuregraph ADD CONSTRAINT util_featur_netwo_featu_fk FOREIGN KEY (networkgraph_featuregraph_id)
REFERENCES util_networkgraph (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_featurematerial 
-- -------------------------------------------------------------------- 
ALTER TABLE util_featurematerial ADD CONSTRAINT util_featurema_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_featurematerial ADD CONSTRAINT util_featurematerial_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_featurematerial ADD CONSTRAINT util_featurema_consists_fk FOREIGN KEY (featuremateria_consistsof_id)
REFERENCES util_featurematerial (id)
ON DELETE SET NULL;

ALTER TABLE util_featurematerial ADD CONSTRAINT util_featur_netwo_hasma_fk FOREIGN KEY (networkfeatur_hasmaterial_id)
REFERENCES util_networkfeature (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_fillingmaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE util_fillingmaterial ADD CONSTRAINT util_fillingmaterial_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_fillingmaterial ADD CONSTRAINT util_fillin_featu_consi_fk FOREIGN KEY (featuremater_consistsoffm_id)
REFERENCES util_featurematerial (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_functionalelement 
-- -------------------------------------------------------------------- 
ALTER TABLE util_functionalelement ADD CONSTRAINT util_functionalelement_fk FOREIGN KEY (id)
REFERENCES util_networkfeature (id);

ALTER TABLE util_functionalelement ADD CONSTRAINT util_functiona_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_functionalelement ADD CONSTRAINT util_functi_compl_funct_fk FOREIGN KEY (complexfunct_functionalco_id)
REFERENCES util_complexfunctionalcom (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_gaseousmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_gaseousmedium ADD CONSTRAINT util_gaseousmedium_fk FOREIGN KEY (id)
REFERENCES util_commodity (id);

-- -------------------------------------------------------------------- 
-- util_ghsclassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE util_ghsclassifier ADD CONSTRAINT util_ghsclassifier_fk FOREIGN KEY (id)
REFERENCES util_hazardclassifier (id);

-- -------------------------------------------------------------------- 
-- util_hazardclassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE util_hazardclassifier ADD CONSTRAINT util_hazardclassifier_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_hazardclassifier ADD CONSTRAINT util_hazardcla_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_hazardclassifier ADD CONSTRAINT util_hazardcla_consists_fk FOREIGN KEY (hazardclassi_consistsoffu_id)
REFERENCES util_hazardclassifier (id)
ON DELETE SET NULL;

ALTER TABLE util_hazardclassifier ADD CONSTRAINT util_hazard_commo_iscla_fk FOREIGN KEY (commodity_isclassifiedby_id)
REFERENCES util_commodity (id)
ON DELETE SET NULL;

ALTER TABLE util_hazardclassifier ADD CONSTRAINT util_hazardcla_definesm_fk FOREIGN KEY (definesmaterial_id)
REFERENCES util_featurematerial (id)
ON DELETE SET NULL;

ALTER TABLE util_hazardclassifier ADD CONSTRAINT util_hazard_featu_iscla_fk FOREIGN KEY (featuremater_isclassified_id)
REFERENCES util_featurematerial (id)
ON DELETE SET NULL;

ALTER TABLE util_hazardclassifier ADD CONSTRAINT util_hazardcla_definesc_fk FOREIGN KEY (definescommodity_id)
REFERENCES util_commodity (id)
ON DELETE SET NULL;

ALTER TABLE util_hazardclassifier ADD CONSTRAINT util_hazardcla_boundedb_fk FOREIGN KEY (boundedby_id)
REFERENCES util_hollowspace (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_hollowspace 
-- -------------------------------------------------------------------- 
ALTER TABLE util_hollowspace ADD CONSTRAINT util_hollowspa_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_hollowspace ADD CONSTRAINT util_hollowspace_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_hollowspace ADD CONSTRAINT util_hollowspa_consists_fk FOREIGN KEY (hollowspace_consistsofpar_id)
REFERENCES util_hollowspace (id)
ON DELETE SET NULL;

ALTER TABLE util_hollowspace ADD CONSTRAINT util_hollowspa_containe_fk FOREIGN KEY (containedcommodity_id)
REFERENCES util_hazardclassifier (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_link 
-- -------------------------------------------------------------------- 
ALTER TABLE util_link ADD CONSTRAINT util_link_objectclass_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_link ADD CONSTRAINT util_link_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_link ADD CONSTRAINT util_link_networ_linkme_fk FOREIGN KEY (networkgraph_linkmember_id)
REFERENCES util_networkgraph (id)
ON DELETE SET NULL;

ALTER TABLE util_link ADD CONSTRAINT util_link_featur_linkme_fk FOREIGN KEY (featuregraph_linkmember_id)
REFERENCES util_featuregraph (id)
ON DELETE SET NULL;

ALTER TABLE util_link ADD CONSTRAINT util_link_featur_networ_fk FOREIGN KEY (featuregraph_networklinkm_id)
REFERENCES util_featuregraph (id)
ON DELETE SET NULL;

ALTER TABLE util_link ADD CONSTRAINT util_link_linkcontrol_fk FOREIGN KEY (linkcontrol_id)
REFERENCES util_linkcontrol (id)
ON DELETE SET NULL;

ALTER TABLE util_link ADD CONSTRAINT util_link_start_fk FOREIGN KEY (start_id)
REFERENCES util_node (id)
ON DELETE SET NULL;

ALTER TABLE util_link ADD CONSTRAINT util_link_end_fk FOREIGN KEY (end_id)
REFERENCES util_node (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_liquidmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_liquidmedium ADD CONSTRAINT util_liquidmedium_fk FOREIGN KEY (id)
REFERENCES util_commodity (id);

-- -------------------------------------------------------------------- 
-- util_mediumsupply 
-- -------------------------------------------------------------------- 
ALTER TABLE util_mediumsupply ADD CONSTRAINT util_medium_cityo_mediu_fk FOREIGN KEY (cityobject_mediumsupply_id)
REFERENCES util_cityobject (id);

ALTER TABLE util_mediumsupply ADD CONSTRAINT util_mediumsup_potentia_fk FOREIGN KEY (potentialsupply_id)
REFERENCES util_supply (id)
ON DELETE SET NULL;

ALTER TABLE util_mediumsupply ADD CONSTRAINT util_mediumsup_currents_fk FOREIGN KEY (currentsupply_id)
REFERENCES util_supply (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_network 
-- -------------------------------------------------------------------- 
ALTER TABLE util_network ADD CONSTRAINT util_network_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_network ADD CONSTRAINT util_network_subnetwork_fk FOREIGN KEY (network_subnetwork_id)
REFERENCES util_network (id)
ON DELETE SET NULL;

ALTER TABLE util_network ADD CONSTRAINT util_networ_commo_assoc_fk FOREIGN KEY (commodity_associatednetwo_id)
REFERENCES util_commodity (id)
ON DELETE SET NULL;

ALTER TABLE util_network ADD CONSTRAINT util_network_subordinat_fk FOREIGN KEY (network_subordinatenetwor_id)
REFERENCES util_network (id)
ON DELETE SET NULL;

ALTER TABLE util_network ADD CONSTRAINT util_network_transporte_fk FOREIGN KEY (transportedmedium_id)
REFERENCES util_commodity (id)
ON DELETE SET NULL;

ALTER TABLE util_network ADD CONSTRAINT util_network_topograph_fk FOREIGN KEY (topograph_id)
REFERENCES util_networkgraph (id)
ON DELETE SET NULL;

ALTER TABLE util_network ADD CONSTRAINT util_network_superordin_fk FOREIGN KEY (network_superordinatenetw_id)
REFERENCES util_network (id)
ON DELETE SET NULL;

ALTER TABLE util_network ADD CONSTRAINT util_network_supplies_fk FOREIGN KEY (supplies_id)
REFERENCES util_supplyarea (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_networkfeature 
-- -------------------------------------------------------------------- 
ALTER TABLE util_networkfeature ADD CONSTRAINT util_networkfe_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_networkfeature ADD CONSTRAINT util_networkfeature_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_networkfeature ADD CONSTRAINT util_networkfe_contains_fk FOREIGN KEY (networkfeature_contains_id)
REFERENCES util_networkfeature (id)
ON DELETE SET NULL;

ALTER TABLE util_networkfeature ADD CONSTRAINT util_networ_featu_usedb_fk FOREIGN KEY (featurematerial_usedby_id)
REFERENCES util_featurematerial (id)
ON DELETE SET NULL;

ALTER TABLE util_networkfeature ADD CONSTRAINT util_networ_netwo_compo_fk FOREIGN KEY (network_component_id)
REFERENCES util_network (id)
ON DELETE SET NULL;

ALTER TABLE util_networkfeature ADD CONSTRAINT util_networkfe_consists_fk FOREIGN KEY (networkfeature_consistsof_id)
REFERENCES util_networkfeature (id)
ON DELETE SET NULL;

ALTER TABLE util_networkfeature ADD CONSTRAINT util_networkfeatu_owner_fk FOREIGN KEY (owner_id)
REFERENCES util_actor (id)
ON DELETE SET NULL;

ALTER TABLE util_networkfeature ADD CONSTRAINT util_networkfe_topograp_fk FOREIGN KEY (topograph_id)
REFERENCES util_featuregraph (id)
ON DELETE SET NULL;

ALTER TABLE util_networkfeature ADD CONSTRAINT util_networkfe_occupied_fk FOREIGN KEY (occupiedhollowspace_id)
REFERENCES util_hollowspace (id)
ON DELETE SET NULL;

ALTER TABLE util_networkfeature ADD CONSTRAINT util_networ_lod1ge_brep_fk FOREIGN KEY (lod1geometry_brep_id)
REFERENCES surface_geometry (id);

-- -------------------------------------------------------------------- 
-- util_networkgraph 
-- -------------------------------------------------------------------- 
ALTER TABLE util_networkgraph ADD CONSTRAINT util_networkgraph_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- util_node 
-- -------------------------------------------------------------------- 
ALTER TABLE util_node ADD CONSTRAINT util_node_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_node ADD CONSTRAINT util_node_featur_nodeme_fk FOREIGN KEY (featuregraph_nodemember_id)
REFERENCES util_featuregraph (id)
ON DELETE SET NULL;

ALTER TABLE util_node ADD CONSTRAINT util_node_connectionsig_fk FOREIGN KEY (connectionsignature_id)
REFERENCES util_signature (id)
ON DELETE SET NULL;

ALTER TABLE util_node ADD CONSTRAINT util_node_linkcontrol_fk FOREIGN KEY (linkcontrol_id)
REFERENCES util_linkcontrol (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_opticalmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_opticalmedium ADD CONSTRAINT util_opticalmedium_fk FOREIGN KEY (id)
REFERENCES util_commodity (id);

-- -------------------------------------------------------------------- 
-- util_pipe 
-- -------------------------------------------------------------------- 
ALTER TABLE util_pipe ADD CONSTRAINT util_pipe_objectclass_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_pipe ADD CONSTRAINT util_pipe_fk FOREIGN KEY (id)
REFERENCES util_distributionelement (id);

-- -------------------------------------------------------------------- 
-- util_protectedswitch 
-- -------------------------------------------------------------------- 
ALTER TABLE util_protectedswitch ADD CONSTRAINT util_protected_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_protectedswitch ADD CONSTRAINT util_protectedswitch_fk FOREIGN KEY (id)
REFERENCES util_controllercomponent (id);

ALTER TABLE util_protectedswitch ADD CONSTRAINT util_protectedswitch_fk_1 FOREIGN KEY (id)
REFERENCES util_controllercomponent (id);

-- -------------------------------------------------------------------- 
-- util_protectionshell 
-- -------------------------------------------------------------------- 
ALTER TABLE util_protectionshell ADD CONSTRAINT util_protectionshell_fk FOREIGN KEY (id)
REFERENCES util_networkfeature (id);

ALTER TABLE util_protectionshell ADD CONSTRAINT util_protectio_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

-- -------------------------------------------------------------------- 
-- util_rectangularpipe 
-- -------------------------------------------------------------------- 
ALTER TABLE util_rectangularpipe ADD CONSTRAINT util_rectangularpipe_fk FOREIGN KEY (id)
REFERENCES util_pipe (id);

-- -------------------------------------------------------------------- 
-- util_rectangularshell 
-- -------------------------------------------------------------------- 
ALTER TABLE util_rectangularshell ADD CONSTRAINT util_rectangularshell_fk FOREIGN KEY (id)
REFERENCES util_protectionshell (id);

-- -------------------------------------------------------------------- 
-- util_regulator 
-- -------------------------------------------------------------------- 
ALTER TABLE util_regulator ADD CONSTRAINT util_regulator_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- util_roleinnetwork 
-- -------------------------------------------------------------------- 
ALTER TABLE util_roleinnetwork ADD CONSTRAINT util_roleinnetwork_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE util_roleinnetwork ADD CONSTRAINT util_rolein_cityo_rolei_fk FOREIGN KEY (cityobject_roleinnetwork_id)
REFERENCES util_cityobject (id)
ON DELETE SET NULL;

ALTER TABLE util_roleinnetwork ADD CONSTRAINT util_roleinnetw_network_fk FOREIGN KEY (network_id)
REFERENCES util_network (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- util_simplefunctionalcomp 
-- -------------------------------------------------------------------- 
ALTER TABLE util_simplefunctionalcomp ADD CONSTRAINT util_simplefun_objectcl_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE util_simplefunctionalcomp ADD CONSTRAINT util_simplefunctionalco_fk FOREIGN KEY (id)
REFERENCES util_functionalelement (id);

-- -------------------------------------------------------------------- 
-- util_solidmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_solidmedium ADD CONSTRAINT util_solidmedium_fk FOREIGN KEY (id)
REFERENCES util_commodity (id);

-- -------------------------------------------------------------------- 
-- util_storage 
-- -------------------------------------------------------------------- 
ALTER TABLE util_storage ADD CONSTRAINT util_storag_mediu_stora_fk FOREIGN KEY (mediumsupply_storage_id)
REFERENCES util_mediumsupply (id);

-- -------------------------------------------------------------------- 
-- util_supplyarea 
-- -------------------------------------------------------------------- 
ALTER TABLE util_supplyarea ADD CONSTRAINT util_supplyarea_fk FOREIGN KEY (id)
REFERENCES cityobjectgroup (id);

ALTER TABLE util_supplyarea ADD CONSTRAINT util_supplyare_supplied_fk FOREIGN KEY (suppliedby_id)
REFERENCES util_network (id)
ON DELETE SET NULL;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create Indexes ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- util_actor 
-- -------------------------------------------------------------------- 
CREATE INDEX util_actor_address_fkx ON util_actor
    USING btree
    (
      address_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_actor_netwo_opera_fkx ON util_actor
    USING btree
    (
      networkfeature_operator_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_cable 
-- -------------------------------------------------------------------- 
CREATE INDEX util_cable_objectclass_fkx ON util_cable
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_canal 
-- -------------------------------------------------------------------- 
CREATE INDEX util_canal_objectclass_fkx ON util_canal
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_commodity 
-- -------------------------------------------------------------------- 
CREATE INDEX util_commodit_objectcl_fkx ON util_commodity
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_complexfunctionalcom 
-- -------------------------------------------------------------------- 
CREATE INDEX util_complexf_objectcl_fkx ON util_complexfunctionalcom
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_conductor 
-- -------------------------------------------------------------------- 
CREATE INDEX util_conducto_objectcl_fkx ON util_conductor
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_connectioncomponent 
-- -------------------------------------------------------------------- 
CREATE INDEX util_connecti_objectcl_fkx ON util_connectioncomponent
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_connector 
-- -------------------------------------------------------------------- 
CREATE INDEX util_connecto_objectcl_fkx ON util_connector
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_controllercomponent 
-- -------------------------------------------------------------------- 
CREATE INDEX util_controll_objectcl_fkx ON util_controllercomponent
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_distributionelement 
-- -------------------------------------------------------------------- 
CREATE INDEX util_distribu_objectcl_fkx ON util_distributionelement
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_featuregraph 
-- -------------------------------------------------------------------- 
CREATE INDEX util_featu_netwo_featu_fkx ON util_featuregraph
    USING btree
    (
      networkgraph_featuregraph_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_featurematerial 
-- -------------------------------------------------------------------- 
CREATE INDEX util_featurem_consists_fkx ON util_featurematerial
    USING btree
    (
      featuremateria_consistsof_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_featu_netwo_hasma_fkx ON util_featurematerial
    USING btree
    (
      networkfeatur_hasmaterial_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_featurem_objectcl_fkx ON util_featurematerial
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_fillingmaterial 
-- -------------------------------------------------------------------- 
CREATE INDEX util_filli_featu_consi_fkx ON util_fillingmaterial
    USING btree
    (
      featuremater_consistsoffm_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_functionalelement 
-- -------------------------------------------------------------------- 
CREATE INDEX util_funct_compl_funct_fkx ON util_functionalelement
    USING btree
    (
      complexfunct_functionalco_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_function_objectcl_fkx ON util_functionalelement
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_hazardclassifier 
-- -------------------------------------------------------------------- 
CREATE INDEX util_hazardcl_boundedb_fkx ON util_hazardclassifier
    USING btree
    (
      boundedby_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_hazar_commo_iscla_fkx ON util_hazardclassifier
    USING btree
    (
      commodity_isclassifiedby_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_hazardcl_definesc_fkx ON util_hazardclassifier
    USING btree
    (
      definescommodity_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_hazardcl_definesm_fkx ON util_hazardclassifier
    USING btree
    (
      definesmaterial_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_hazar_featu_iscla_fkx ON util_hazardclassifier
    USING btree
    (
      featuremater_isclassified_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_hazardcl_consists_fkx ON util_hazardclassifier
    USING btree
    (
      hazardclassi_consistsoffu_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_hazardcl_objectcl_fkx ON util_hazardclassifier
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_hollowspace 
-- -------------------------------------------------------------------- 
CREATE INDEX util_hollowsp_containe_fkx ON util_hollowspace
    USING btree
    (
      containedcommodity_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_hollowsp_consists_fkx ON util_hollowspace
    USING btree
    (
      hollowspace_consistsofpar_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_hollowsp_objectcl_fkx ON util_hollowspace
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_link 
-- -------------------------------------------------------------------- 
CREATE INDEX util_link_end_fkx ON util_link
    USING btree
    (
      end_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_link_featur_linkm_fkx ON util_link
    USING btree
    (
      featuregraph_linkmember_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_link_featur_netwo_fkx ON util_link
    USING btree
    (
      featuregraph_networklinkm_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_link_linkcontrol_fkx ON util_link
    USING btree
    (
      linkcontrol_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_link_networ_linkm_fkx ON util_link
    USING btree
    (
      networkgraph_linkmember_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_link_objectclass_fkx ON util_link
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_link_realization_spx ON util_link
    USING gist
    (
      realization
    );

CREATE INDEX util_link_start_fkx ON util_link
    USING btree
    (
      start_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_mediumsupply 
-- -------------------------------------------------------------------- 
CREATE INDEX util_mediu_cityo_mediu_fkx ON util_mediumsupply
    USING btree
    (
      cityobject_mediumsupply_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_mediumsu_currents_fkx ON util_mediumsupply
    USING btree
    (
      currentsupply_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_mediumsu_potentia_fkx ON util_mediumsupply
    USING btree
    (
      potentialsupply_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_network 
-- -------------------------------------------------------------------- 
CREATE INDEX util_netwo_commo_assoc_fkx ON util_network
    USING btree
    (
      commodity_associatednetwo_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_network_subnetwor_fkx ON util_network
    USING btree
    (
      network_subnetwork_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_network_subordina_fkx ON util_network
    USING btree
    (
      network_subordinatenetwor_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_network_superordi_fkx ON util_network
    USING btree
    (
      network_superordinatenetw_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_network_supplies_fkx ON util_network
    USING btree
    (
      supplies_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_network_topograph_fkx ON util_network
    USING btree
    (
      topograph_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_network_transport_fkx ON util_network
    USING btree
    (
      transportedmedium_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_networkfeature 
-- -------------------------------------------------------------------- 
CREATE INDEX util_netwo_featu_usedb_fkx ON util_networkfeature
    USING btree
    (
      featurematerial_usedby_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_networ_lod1g_brep_fkx ON util_networkfeature
    USING btree
    (
      lod1geometry_brep_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_netw_lod1_oth_geo_spx ON util_networkfeature
    USING gist
    (
      lod1geometry_other_geom
    );

CREATE INDEX util_netwo_netwo_compo_fkx ON util_networkfeature
    USING btree
    (
      network_component_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_networkf_consists_fkx ON util_networkfeature
    USING btree
    (
      networkfeature_consistsof_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_networkf_contains_fkx ON util_networkfeature
    USING btree
    (
      networkfeature_contains_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_networkf_objectcl_fkx ON util_networkfeature
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_networkf_occupied_fkx ON util_networkfeature
    USING btree
    (
      occupiedhollowspace_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_networkfeat_owner_fkx ON util_networkfeature
    USING btree
    (
      owner_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_networkf_topograp_fkx ON util_networkfeature
    USING btree
    (
      topograph_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_node 
-- -------------------------------------------------------------------- 
CREATE INDEX util_node_connectionsi_fkx ON util_node
    USING btree
    (
      connectionsignature_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_node_featur_nodem_fkx ON util_node
    USING btree
    (
      featuregraph_nodemember_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_node_linkcontrol_fkx ON util_node
    USING btree
    (
      linkcontrol_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_node_realization_spx ON util_node
    USING gist
    (
      realization
    );

-- -------------------------------------------------------------------- 
-- util_pipe 
-- -------------------------------------------------------------------- 
CREATE INDEX util_pipe_objectclass_fkx ON util_pipe
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_protectedswitch 
-- -------------------------------------------------------------------- 
CREATE INDEX util_protecte_objectcl_fkx ON util_protectedswitch
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_protectionshell 
-- -------------------------------------------------------------------- 
CREATE INDEX util_protecti_objectcl_fkx ON util_protectionshell
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_roleinnetwork 
-- -------------------------------------------------------------------- 
CREATE INDEX util_rolei_cityo_rolei_fkx ON util_roleinnetwork
    USING btree
    (
      cityobject_roleinnetwork_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX util_roleinnet_network_fkx ON util_roleinnetwork
    USING btree
    (
      network_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_simplefunctionalcomp 
-- -------------------------------------------------------------------- 
CREATE INDEX util_simplefu_objectcl_fkx ON util_simplefunctionalcomp
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_storage 
-- -------------------------------------------------------------------- 
CREATE INDEX util_stora_mediu_stora_fkx ON util_storage
    USING btree
    (
      mediumsupply_storage_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- util_supplyarea 
-- -------------------------------------------------------------------- 
CREATE INDEX util_supplyar_supplied_fkx ON util_supplyarea
    USING btree
    (
      suppliedby_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create Sequences *********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

CREATE SEQUENCE util_hazardclass_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE util_linkcontrol_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE util_mediumsupply_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE util_supply_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE util_storage_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE util_signature_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


