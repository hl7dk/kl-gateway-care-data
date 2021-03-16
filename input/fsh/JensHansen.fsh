
Alias: $KLTerminology = http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII

// ------------------------------------------------------------------------------------------------

Instance: 3304e5f8-4b3f-4c19-8c68-e36c573f3f98
InstanceOf: KLGatewayCareCitizenData
Title: "CareData-JensHansen-1"
Description: "Reporting of Jens Hansen after first encounter with Home Care Assessor at the hospital"
* type = #collection
* timestamp = 2021-02-10T11:14:09Z
* insert CitizenEntry(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* insert CitizenEntryVersion(eec9e8e9-221d-4eae-a54d-cdd403661def, v2) // Jens Hansen
* insert ConditionEntry(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning
// * insert ConditionEntry(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner
// * insert ConditionEntry(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad
// * insert ConditionEntry(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde
// * insert ConditionEntry(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
// * insert ConditionEntry(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
// * insert ConditionEntry(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke
// * insert GoalEntry(91bed89f-4365-4878-849c-61554de55248) // Moderate begrænsninger i af- og påklædning
// * insert GoalEntry(33cd1262-c00f-440a-9e30-620166ff6b7a) // Moderate begrænsninger i at udføre daglige rutiner
// * insert GoalEntry(a638744a-c6a9-49c5-940e-e16f94e806b9) // Moderate begrænsninger i at lave mad
// * insert GoalEntry(1c62dbc4-91f7-4ad8-86be-783b7158c475) // Moderate begrænsninger i at lave husligt arbejde
// * insert GoalEntry(cc6288f9-48d4-4aac-b640-b750a2dfeb0d) // Lette begrænsninger i at gå
// * insert GoalEntry(dc40bf0d-4411-4317-b424-9bad5045836e) // Lette begrænsninger i at bevæge sig omkring
// * insert GoalEntry(1efb9aec-4e79-4ead-8502-50168f569a18) // Moderate begrænsninger i muskelstyrke
// * insert PlannedInterventionEntry(9ace0320-a6bd-4d90-bfed-b6e5d219dba3) // Personlig hygiejne 
// * insert PlannedInterventionEntry(4f325b94-99fe-4781-9e05-97e27279f8ec) // Hverdagens aktiviteter 
// * insert PlannedInterventionEntry(13c640c6-98d9-4066-abb3-ad7cd3072999) // Madservice 
// * insert PlannedInterventionEntry(8a2e5904-ed0f-4d08-a9c2-fd75fa85cfb7) // Rengøring 
// * insert PlannedInterventionEntry(d8130c0c-d8a1-47c7-acdf-d32f23c58db9) // Mobilitet
// * insert EncounterEntry(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021


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