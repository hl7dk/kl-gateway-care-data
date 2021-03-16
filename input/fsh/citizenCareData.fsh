Profile: KLGatewayCareCitizenData
Parent: Bundle
Id: klgateway-care-citizen-data
Title: "CareCitizenData"
Description: "Collection of care data updates for one citizen"
* type = #collection
* timestamp 1..
* total ..0
* link ..0
* entry.link ..0
* entry.resource 1..1
* entry.resource only
    KLGatewayCareCitizen or
    KLGatewayCareCondition or
    KLGatewayCareGoal or
    KLGatewayCarePlannedIntervention or
    KLGatewayCareCompletedIntervention or
    KLGatewayCareEncounter or
    Observation // KLGatewayCareCitizensOwnObservation or KLGatewayCareMatterOfInterestObservation or KLGatewayCareFollowUpObservation
* entry.resource ^short = "Content constrained to known profiles (see also constraint gateway-care-data-1)"
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0
* obeys gateway-care-data-1


Invariant: gateway-care-data-1
Description: "All observation resources shall conform to either klgateway-care-citizens-own-observation profile, klgateway-care-matter-of-interest-observation, or klgateway-care-follow-up-observation"
Severity: #error
Expression: "entry.ofType(Observation).all(
    resource.conformsTo('http://care-data.gateway.kl.dk/1.0/StructureDefinition/klgateway-care-citizens-own-observation')
 or resource.conformsTo('http://care-data.gateway.kl.dk/1.0/StructureDefinition/klgateway-care-matter-of-interest-observation')
 or resource.conformsTo('http://care-data.gateway.kl.dk/1.0/StructureDefinition/klgateway-care-follow-up-observation'))"
