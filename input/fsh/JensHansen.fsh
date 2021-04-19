
Alias: $KLTerminology = http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII

// ------------------------------------------------------------------------------------------------

// Conditions
Instance: d45b02d1-be76-4968-812b-6b32338ad8ad
InstanceOf: KLGatewayCareCondition
Description: "Af- og påklædning, svære begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B4 // Svære begrænsninger
* code = $KLTerminology#J1.3 // Af- og påklædning
// * subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
// * subject = Reference(http://care-data.gateway.kl.dk/1.0/StructureDefinition/klgateway-care-citizen/eec9e8e9-221d-4eae-a54d-cdd403661/_history/1) // Jens Hansen
* subject = Reference(Patient/eec9e8e9-221d-4eae-a54d-cdd403661def/_history/1) // Jens Hansen
* recordedDate = 2021-02-10 
// * extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021


// ------------------------------------------------------------------------------------------------

// Citizen
Instance: eec9e8e9-221d-4eae-a54d-cdd403661def
InstanceOf: KLGatewayCareCitizen
Description: "Citizen Jens Hansen"
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = 2020-08-14T00:00:00Z
* identifier.use = #official
* identifier.value = "0101410001"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"

// Citizen
Instance: eec9e8e9-221d-4eae-a54d-cdd403661def-v2
InstanceOf: KLGatewayCareCitizen
Description: "Citizen Jens Hansen"
Usage: #inline
* id = "eec9e8e9-221d-4eae-a54d-cdd403661def"
* meta.versionId = "2"
* meta.lastUpdated = 2020-08-15T00:00:00Z
* identifier.use = #official
* identifier.value = "0101410001"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"