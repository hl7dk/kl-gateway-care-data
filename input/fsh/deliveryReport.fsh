Profile: KLGatewayCareDeliveryReport
Parent: Bundle
Id: klgateway-care-delivery-report
Title: "CareDeliveryReport"
Description: "Deliver report to deliver for each citizen."
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link ..0
* entry.resource 1..1
* entry.resource only
    KLGatewayCareCitizen or
    KLGatewayCareCondition or
    KLGatewayCareGoal or
    KLGatewayCarePlannedIntervention or
    KLGatewayCareCompletedIntervention or
    KLGatewayCareEncounter or
    Observation // KLGatewayCareCitizensOwnObservation or KLGatewayCareMatterOfInterestObservation or KLGatewayCareFollowUpObservation
* entry.resource ^short = "Content constrained to known profiles (see also constraint gateway-care-report-1)"
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0
* obeys gateway-care-report-1


Invariant: gateway-care-report-1
Description: "All observation resources shall conform to either klgateway-care-citizens-own-observation profile, klgateway-care-matter-of-interest-observation, or klgateway-care-follow-up-observation"
Severity: #error
Expression: "entry.ofType(Observation).all(
    resource.conformsTo('http://municipality-care-data.gateway.kl.dk/1.0/StructureDefinition/klgateway-care-citizens-own-observation')
 or resource.conformsTo('http://municipality-care-data.gateway.kl.dk/1.0/StructureDefinition/klgateway-care-matter-of-interest-observation')
 or resource.conformsTo('http://municipality-care-data.gateway.kl.dk/1.0/StructureDefinition/klgateway-care-follow-up-observation'))"


Instance: TestPersonReport
InstanceOf: KLGatewayCareDeliveryReport
Description: "Example of a delivery report for the test person"
* type = #collection
* timestamp = 2020-08-14T00:00:00Z
* entry[+].fullUrl = "Patient/TestPerson"
* entry[=].resource = TestPerson
* entry[+].fullUrl = "Condition/VaskeSigLetteBegraensninger"
* entry[=].resource = VaskeSigLetteBegraensninger 
* entry[+].fullUrl = "Goal/ForventetIngenBegraensninger"
* entry[=].resource = ForventetIngenBegraensninger
* entry[+].fullUrl = "Observation/OpleverIkkeBegraensningerMedVaskeSig"
* entry[=].resource = OpleverIkkeBegraensningerMedVaskeSig
* entry[+].fullUrl = "Observation/UdfoererSelvVaskeSig"
* entry[=].resource = UdfoererSelvVaskeSig
* entry[+].fullUrl = "Condition/ProblemerMedPersonligPleje"
* entry[=].resource = ProblemerMedPersonligPleje
* entry[+].fullUrl = "CarePlan/PersonligHygiejne"
* entry[=].resource = PersonligHygiejne
* entry[+].fullUrl = "CarePlan/Dialyse"
* entry[=].resource = Dialyse
* entry[+].fullUrl = "Procedure/Saarbehandling"
* entry[=].resource = Saarbehandling    
* entry[+].fullUrl = "Observation/EgensomsorgBegraensninger"
* entry[=].resource = EgensomsorgBegraensninger
* entry[+].fullUrl = "Encounter/bfa70a76-318d-453d-9abc-76982f8d13ca"
* entry[=].resource = bfa70a76-318d-453d-9abc-76982f8d13ca
* entry[+].fullUrl = "Observation/VaskeSigFortsaettes"
* entry[=].resource = VaskeSigFortsaettes
* entry[+].fullUrl = "Observation/PersonligPlejeFortsaettes"
* entry[=].resource = PersonligPlejeFortsaettes
* entry[+].fullUrl = "Observation/PersonligHygiejneFortsaettes"
* entry[=].resource = PersonligHygiejneFortsaettes
* entry[+].fullUrl = "Observation/DialyseFortsaettes"
* entry[=].resource = DialyseFortsaettes
