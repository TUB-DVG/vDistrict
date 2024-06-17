-- This document was automatically created by the ADE-Manager tool of 3DCityDB (https://www.3dcitydb.org) on 2019-03-13 12:45:06 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop foreign keys ********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- util_actor 
-- -------------------------------------------------------------------- 
ALTER TABLE util_actor
    DROP CONSTRAINT util_actor_fk;

ALTER TABLE util_actor
    DROP CONSTRAINT util_actor_networ_opera_fk;

ALTER TABLE util_actor
    DROP CONSTRAINT util_actor_address_fk;

-- -------------------------------------------------------------------- 
-- util_actuator 
-- -------------------------------------------------------------------- 
ALTER TABLE util_actuator
    DROP CONSTRAINT util_actuator_fk;

-- -------------------------------------------------------------------- 
-- util_building 
-- -------------------------------------------------------------------- 
ALTER TABLE util_building
    DROP CONSTRAINT util_building_fk;

-- -------------------------------------------------------------------- 
-- util_cable 
-- -------------------------------------------------------------------- 
ALTER TABLE util_cable
    DROP CONSTRAINT util_cable_objectclass_fk;

ALTER TABLE util_cable
    DROP CONSTRAINT util_cable_fk;

-- -------------------------------------------------------------------- 
-- util_canal 
-- -------------------------------------------------------------------- 
ALTER TABLE util_canal
    DROP CONSTRAINT util_canal_objectclass_fk;

ALTER TABLE util_canal
    DROP CONSTRAINT util_canal_fk;

-- -------------------------------------------------------------------- 
-- util_chemicalclassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE util_chemicalclassifier
    DROP CONSTRAINT util_chemicalclassifier_fk;

-- -------------------------------------------------------------------- 
-- util_cityobject 
-- -------------------------------------------------------------------- 
ALTER TABLE util_cityobject
    DROP CONSTRAINT util_cityobject_fk;

-- -------------------------------------------------------------------- 
-- util_commodity 
-- -------------------------------------------------------------------- 
ALTER TABLE util_commodity
    DROP CONSTRAINT util_commodity_fk;

ALTER TABLE util_commodity
    DROP CONSTRAINT util_commodity_objectcl_fk;

-- -------------------------------------------------------------------- 
-- util_complexfunctionalcom 
-- -------------------------------------------------------------------- 
ALTER TABLE util_complexfunctionalcom
    DROP CONSTRAINT util_complexfu_objectcl_fk;

ALTER TABLE util_complexfunctionalcom
    DROP CONSTRAINT util_complexfunctionalc_fk;

-- -------------------------------------------------------------------- 
-- util_conductor 
-- -------------------------------------------------------------------- 
ALTER TABLE util_conductor
    DROP CONSTRAINT util_conductor_fk;

ALTER TABLE util_conductor
    DROP CONSTRAINT util_conductor_fk_1;

ALTER TABLE util_conductor
    DROP CONSTRAINT util_conductor_objectcl_fk;

-- -------------------------------------------------------------------- 
-- util_connectioncomponent 
-- -------------------------------------------------------------------- 
ALTER TABLE util_connectioncomponent
    DROP CONSTRAINT util_connectio_objectcl_fk;

ALTER TABLE util_connectioncomponent
    DROP CONSTRAINT util_connectioncomponen_fk;

-- -------------------------------------------------------------------- 
-- util_connector 
-- -------------------------------------------------------------------- 
ALTER TABLE util_connector
    DROP CONSTRAINT util_connector_objectcl_fk;

ALTER TABLE util_connector
    DROP CONSTRAINT util_connector_fk;

ALTER TABLE util_connector
    DROP CONSTRAINT util_connector_fk_1;

-- -------------------------------------------------------------------- 
-- util_controllercomponent 
-- -------------------------------------------------------------------- 
ALTER TABLE util_controllercomponent
    DROP CONSTRAINT util_controlle_objectcl_fk;

ALTER TABLE util_controllercomponent
    DROP CONSTRAINT util_controllercomponen_fk;

-- -------------------------------------------------------------------- 
-- util_distributionelement 
-- -------------------------------------------------------------------- 
ALTER TABLE util_distributionelement
    DROP CONSTRAINT util_distributionelemen_fk;

ALTER TABLE util_distributionelement
    DROP CONSTRAINT util_distribut_objectcl_fk;

-- -------------------------------------------------------------------- 
-- util_electricalmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_electricalmedium
    DROP CONSTRAINT util_electricalmedium_fk;

-- -------------------------------------------------------------------- 
-- util_featuregraph 
-- -------------------------------------------------------------------- 
ALTER TABLE util_featuregraph
    DROP CONSTRAINT util_featuregraph_fk;

ALTER TABLE util_featuregraph
    DROP CONSTRAINT util_featur_netwo_featu_fk;

-- -------------------------------------------------------------------- 
-- util_featurematerial 
-- -------------------------------------------------------------------- 
ALTER TABLE util_featurematerial
    DROP CONSTRAINT util_featurema_objectcl_fk;

ALTER TABLE util_featurematerial
    DROP CONSTRAINT util_featurematerial_fk;

ALTER TABLE util_featurematerial
    DROP CONSTRAINT util_featurema_consists_fk;

ALTER TABLE util_featurematerial
    DROP CONSTRAINT util_featur_netwo_hasma_fk;

-- -------------------------------------------------------------------- 
-- util_fillingmaterial 
-- -------------------------------------------------------------------- 
ALTER TABLE util_fillingmaterial
    DROP CONSTRAINT util_fillingmaterial_fk;

ALTER TABLE util_fillingmaterial
    DROP CONSTRAINT util_fillin_featu_consi_fk;

-- -------------------------------------------------------------------- 
-- util_functionalelement 
-- -------------------------------------------------------------------- 
ALTER TABLE util_functionalelement
    DROP CONSTRAINT util_functionalelement_fk;

ALTER TABLE util_functionalelement
    DROP CONSTRAINT util_functiona_objectcl_fk;

ALTER TABLE util_functionalelement
    DROP CONSTRAINT util_functi_compl_funct_fk;

-- -------------------------------------------------------------------- 
-- util_gaseousmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_gaseousmedium
    DROP CONSTRAINT util_gaseousmedium_fk;

-- -------------------------------------------------------------------- 
-- util_ghsclassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE util_ghsclassifier
    DROP CONSTRAINT util_ghsclassifier_fk;

-- -------------------------------------------------------------------- 
-- util_hazardclassifier 
-- -------------------------------------------------------------------- 
ALTER TABLE util_hazardclassifier
    DROP CONSTRAINT util_hazardclassifier_fk;

ALTER TABLE util_hazardclassifier
    DROP CONSTRAINT util_hazardcla_objectcl_fk;

ALTER TABLE util_hazardclassifier
    DROP CONSTRAINT util_hazardcla_consists_fk;

ALTER TABLE util_hazardclassifier
    DROP CONSTRAINT util_hazard_commo_iscla_fk;

ALTER TABLE util_hazardclassifier
    DROP CONSTRAINT util_hazardcla_definesm_fk;

ALTER TABLE util_hazardclassifier
    DROP CONSTRAINT util_hazard_featu_iscla_fk;

ALTER TABLE util_hazardclassifier
    DROP CONSTRAINT util_hazardcla_definesc_fk;

ALTER TABLE util_hazardclassifier
    DROP CONSTRAINT util_hazardcla_boundedb_fk;

-- -------------------------------------------------------------------- 
-- util_hollowspace 
-- -------------------------------------------------------------------- 
ALTER TABLE util_hollowspace
    DROP CONSTRAINT util_hollowspa_objectcl_fk;

ALTER TABLE util_hollowspace
    DROP CONSTRAINT util_hollowspace_fk;

ALTER TABLE util_hollowspace
    DROP CONSTRAINT util_hollowspa_consists_fk;

ALTER TABLE util_hollowspace
    DROP CONSTRAINT util_hollowspa_containe_fk;

-- -------------------------------------------------------------------- 
-- util_link 
-- -------------------------------------------------------------------- 
ALTER TABLE util_link
    DROP CONSTRAINT util_link_objectclass_fk;

ALTER TABLE util_link
    DROP CONSTRAINT util_link_fk;

ALTER TABLE util_link
    DROP CONSTRAINT util_link_networ_linkme_fk;

ALTER TABLE util_link
    DROP CONSTRAINT util_link_featur_linkme_fk;

ALTER TABLE util_link
    DROP CONSTRAINT util_link_featur_networ_fk;

ALTER TABLE util_link
    DROP CONSTRAINT util_link_linkcontrol_fk;

ALTER TABLE util_link
    DROP CONSTRAINT util_link_start_fk;

ALTER TABLE util_link
    DROP CONSTRAINT util_link_end_fk;

-- -------------------------------------------------------------------- 
-- util_liquidmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_liquidmedium
    DROP CONSTRAINT util_liquidmedium_fk;

-- -------------------------------------------------------------------- 
-- util_mediumsupply 
-- -------------------------------------------------------------------- 
ALTER TABLE util_mediumsupply
    DROP CONSTRAINT util_medium_cityo_mediu_fk;

ALTER TABLE util_mediumsupply
    DROP CONSTRAINT util_mediumsup_potentia_fk;

ALTER TABLE util_mediumsupply
    DROP CONSTRAINT util_mediumsup_currents_fk;

-- -------------------------------------------------------------------- 
-- util_network 
-- -------------------------------------------------------------------- 
ALTER TABLE util_network
    DROP CONSTRAINT util_network_fk;

ALTER TABLE util_network
    DROP CONSTRAINT util_network_subnetwork_fk;

ALTER TABLE util_network
    DROP CONSTRAINT util_networ_commo_assoc_fk;

ALTER TABLE util_network
    DROP CONSTRAINT util_network_subordinat_fk;

ALTER TABLE util_network
    DROP CONSTRAINT util_network_transporte_fk;

ALTER TABLE util_network
    DROP CONSTRAINT util_network_topograph_fk;

ALTER TABLE util_network
    DROP CONSTRAINT util_network_superordin_fk;

ALTER TABLE util_network
    DROP CONSTRAINT util_network_supplies_fk;

-- -------------------------------------------------------------------- 
-- util_networkfeature 
-- -------------------------------------------------------------------- 
ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networkfe_objectcl_fk;

ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networkfeature_fk;

ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networkfe_contains_fk;

ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networ_featu_usedb_fk;

ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networ_netwo_compo_fk;

ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networkfe_consists_fk;

ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networkfeatu_owner_fk;

ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networkfe_topograp_fk;

ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networkfe_occupied_fk;

ALTER TABLE util_networkfeature
    DROP CONSTRAINT util_networ_lod1ge_brep_fk;

-- -------------------------------------------------------------------- 
-- util_networkgraph 
-- -------------------------------------------------------------------- 
ALTER TABLE util_networkgraph
    DROP CONSTRAINT util_networkgraph_fk;

-- -------------------------------------------------------------------- 
-- util_node 
-- -------------------------------------------------------------------- 
ALTER TABLE util_node
    DROP CONSTRAINT util_node_fk;

ALTER TABLE util_node
    DROP CONSTRAINT util_node_featur_nodeme_fk;

ALTER TABLE util_node
    DROP CONSTRAINT util_node_connectionsig_fk;

ALTER TABLE util_node
    DROP CONSTRAINT util_node_linkcontrol_fk;

-- -------------------------------------------------------------------- 
-- util_opticalmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_opticalmedium
    DROP CONSTRAINT util_opticalmedium_fk;

-- -------------------------------------------------------------------- 
-- util_pipe 
-- -------------------------------------------------------------------- 
ALTER TABLE util_pipe
    DROP CONSTRAINT util_pipe_objectclass_fk;

ALTER TABLE util_pipe
    DROP CONSTRAINT util_pipe_fk;

-- -------------------------------------------------------------------- 
-- util_protectedswitch 
-- -------------------------------------------------------------------- 
ALTER TABLE util_protectedswitch
    DROP CONSTRAINT util_protected_objectcl_fk;

ALTER TABLE util_protectedswitch
    DROP CONSTRAINT util_protectedswitch_fk;

ALTER TABLE util_protectedswitch
    DROP CONSTRAINT util_protectedswitch_fk_1;

-- -------------------------------------------------------------------- 
-- util_protectionshell 
-- -------------------------------------------------------------------- 
ALTER TABLE util_protectionshell
    DROP CONSTRAINT util_protectionshell_fk;

ALTER TABLE util_protectionshell
    DROP CONSTRAINT util_protectio_objectcl_fk;

-- -------------------------------------------------------------------- 
-- util_rectangularpipe 
-- -------------------------------------------------------------------- 
ALTER TABLE util_rectangularpipe
    DROP CONSTRAINT util_rectangularpipe_fk;

-- -------------------------------------------------------------------- 
-- util_rectangularshell 
-- -------------------------------------------------------------------- 
ALTER TABLE util_rectangularshell
    DROP CONSTRAINT util_rectangularshell_fk;

-- -------------------------------------------------------------------- 
-- util_regulator 
-- -------------------------------------------------------------------- 
ALTER TABLE util_regulator
    DROP CONSTRAINT util_regulator_fk;

-- -------------------------------------------------------------------- 
-- util_roleinnetwork 
-- -------------------------------------------------------------------- 
ALTER TABLE util_roleinnetwork
    DROP CONSTRAINT util_roleinnetwork_fk;

ALTER TABLE util_roleinnetwork
    DROP CONSTRAINT util_rolein_cityo_rolei_fk;

ALTER TABLE util_roleinnetwork
    DROP CONSTRAINT util_roleinnetw_network_fk;

-- -------------------------------------------------------------------- 
-- util_simplefunctionalcomp 
-- -------------------------------------------------------------------- 
ALTER TABLE util_simplefunctionalcomp
    DROP CONSTRAINT util_simplefun_objectcl_fk;

ALTER TABLE util_simplefunctionalcomp
    DROP CONSTRAINT util_simplefunctionalco_fk;

-- -------------------------------------------------------------------- 
-- util_solidmedium 
-- -------------------------------------------------------------------- 
ALTER TABLE util_solidmedium
    DROP CONSTRAINT util_solidmedium_fk;

-- -------------------------------------------------------------------- 
-- util_storage 
-- -------------------------------------------------------------------- 
ALTER TABLE util_storage
    DROP CONSTRAINT util_storag_mediu_stora_fk;

-- -------------------------------------------------------------------- 
-- util_supplyarea 
-- -------------------------------------------------------------------- 
ALTER TABLE util_supplyarea
    DROP CONSTRAINT util_supplyarea_fk;

ALTER TABLE util_supplyarea
    DROP CONSTRAINT util_supplyare_supplied_fk;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop tables *************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- util_actor 
-- -------------------------------------------------------------------- 
DROP TABLE util_actor;

-- -------------------------------------------------------------------- 
-- util_actuator 
-- -------------------------------------------------------------------- 
DROP TABLE util_actuator;

-- -------------------------------------------------------------------- 
-- util_building 
-- -------------------------------------------------------------------- 
DROP TABLE util_building;

-- -------------------------------------------------------------------- 
-- util_cable 
-- -------------------------------------------------------------------- 
DROP TABLE util_cable;

-- -------------------------------------------------------------------- 
-- util_canal 
-- -------------------------------------------------------------------- 
DROP TABLE util_canal;

-- -------------------------------------------------------------------- 
-- util_chemicalclassifier 
-- -------------------------------------------------------------------- 
DROP TABLE util_chemicalclassifier;

-- -------------------------------------------------------------------- 
-- util_cityobject 
-- -------------------------------------------------------------------- 
DROP TABLE util_cityobject;

-- -------------------------------------------------------------------- 
-- util_commodity 
-- -------------------------------------------------------------------- 
DROP TABLE util_commodity;

-- -------------------------------------------------------------------- 
-- util_complexfunctionalcom 
-- -------------------------------------------------------------------- 
DROP TABLE util_complexfunctionalcom;

-- -------------------------------------------------------------------- 
-- util_conductor 
-- -------------------------------------------------------------------- 
DROP TABLE util_conductor;

-- -------------------------------------------------------------------- 
-- util_connectioncomponent 
-- -------------------------------------------------------------------- 
DROP TABLE util_connectioncomponent;

-- -------------------------------------------------------------------- 
-- util_connector 
-- -------------------------------------------------------------------- 
DROP TABLE util_connector;

-- -------------------------------------------------------------------- 
-- util_controllercomponent 
-- -------------------------------------------------------------------- 
DROP TABLE util_controllercomponent;

-- -------------------------------------------------------------------- 
-- util_distributionelement 
-- -------------------------------------------------------------------- 
DROP TABLE util_distributionelement;

-- -------------------------------------------------------------------- 
-- util_electricalmedium 
-- -------------------------------------------------------------------- 
DROP TABLE util_electricalmedium;

-- -------------------------------------------------------------------- 
-- util_featuregraph 
-- -------------------------------------------------------------------- 
DROP TABLE util_featuregraph;

-- -------------------------------------------------------------------- 
-- util_featurematerial 
-- -------------------------------------------------------------------- 
DROP TABLE util_featurematerial;

-- -------------------------------------------------------------------- 
-- util_fillingmaterial 
-- -------------------------------------------------------------------- 
DROP TABLE util_fillingmaterial;

-- -------------------------------------------------------------------- 
-- util_functionalelement 
-- -------------------------------------------------------------------- 
DROP TABLE util_functionalelement;

-- -------------------------------------------------------------------- 
-- util_gaseousmedium 
-- -------------------------------------------------------------------- 
DROP TABLE util_gaseousmedium;

-- -------------------------------------------------------------------- 
-- util_ghsclassifier 
-- -------------------------------------------------------------------- 
DROP TABLE util_ghsclassifier;

-- -------------------------------------------------------------------- 
-- util_hazardclass 
-- -------------------------------------------------------------------- 
DROP TABLE util_hazardclass;

-- -------------------------------------------------------------------- 
-- util_hazardclassifier 
-- -------------------------------------------------------------------- 
DROP TABLE util_hazardclassifier;

-- -------------------------------------------------------------------- 
-- util_hollowspace 
-- -------------------------------------------------------------------- 
DROP TABLE util_hollowspace;

-- -------------------------------------------------------------------- 
-- util_link 
-- -------------------------------------------------------------------- 
DROP TABLE util_link;

-- -------------------------------------------------------------------- 
-- util_linkcontrol 
-- -------------------------------------------------------------------- 
DROP TABLE util_linkcontrol;

-- -------------------------------------------------------------------- 
-- util_liquidmedium 
-- -------------------------------------------------------------------- 
DROP TABLE util_liquidmedium;

-- -------------------------------------------------------------------- 
-- util_mediumsupply 
-- -------------------------------------------------------------------- 
DROP TABLE util_mediumsupply;

-- -------------------------------------------------------------------- 
-- util_network 
-- -------------------------------------------------------------------- 
DROP TABLE util_network;

-- -------------------------------------------------------------------- 
-- util_networkfeature 
-- -------------------------------------------------------------------- 
DROP TABLE util_networkfeature;

-- -------------------------------------------------------------------- 
-- util_networkgraph 
-- -------------------------------------------------------------------- 
DROP TABLE util_networkgraph;

-- -------------------------------------------------------------------- 
-- util_node 
-- -------------------------------------------------------------------- 
DROP TABLE util_node;

-- -------------------------------------------------------------------- 
-- util_opticalmedium 
-- -------------------------------------------------------------------- 
DROP TABLE util_opticalmedium;

-- -------------------------------------------------------------------- 
-- util_pipe 
-- -------------------------------------------------------------------- 
DROP TABLE util_pipe;

-- -------------------------------------------------------------------- 
-- util_protectedswitch 
-- -------------------------------------------------------------------- 
DROP TABLE util_protectedswitch;

-- -------------------------------------------------------------------- 
-- util_protectionshell 
-- -------------------------------------------------------------------- 
DROP TABLE util_protectionshell;

-- -------------------------------------------------------------------- 
-- util_rectangularpipe 
-- -------------------------------------------------------------------- 
DROP TABLE util_rectangularpipe;

-- -------------------------------------------------------------------- 
-- util_rectangularshell 
-- -------------------------------------------------------------------- 
DROP TABLE util_rectangularshell;

-- -------------------------------------------------------------------- 
-- util_regulator 
-- -------------------------------------------------------------------- 
DROP TABLE util_regulator;

-- -------------------------------------------------------------------- 
-- util_roleinnetwork 
-- -------------------------------------------------------------------- 
DROP TABLE util_roleinnetwork;

-- -------------------------------------------------------------------- 
-- util_signature 
-- -------------------------------------------------------------------- 
DROP TABLE util_signature;

-- -------------------------------------------------------------------- 
-- util_simplefunctionalcomp 
-- -------------------------------------------------------------------- 
DROP TABLE util_simplefunctionalcomp;

-- -------------------------------------------------------------------- 
-- util_solidmedium 
-- -------------------------------------------------------------------- 
DROP TABLE util_solidmedium;

-- -------------------------------------------------------------------- 
-- util_storage 
-- -------------------------------------------------------------------- 
DROP TABLE util_storage;

-- -------------------------------------------------------------------- 
-- util_supply 
-- -------------------------------------------------------------------- 
DROP TABLE util_supply;

-- -------------------------------------------------------------------- 
-- util_supplyarea 
-- -------------------------------------------------------------------- 
DROP TABLE util_supplyarea;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop Sequences ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

DROP SEQUENCE util_hazardclass_seq;

DROP SEQUENCE util_linkcontrol_seq;

DROP SEQUENCE util_mediumsupply_seq;

DROP SEQUENCE util_supply_seq;

DROP SEQUENCE util_storage_seq;

DROP SEQUENCE util_signature_seq;
