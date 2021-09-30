This implementation guide describes the content of the reporting of care data from KL Gateway to other authorities at a national level, i.e. KOMBIT FLIS and Sundhedsdatastyrelsen (SDS). This implementation guide defines the profiles of the resources that one can receive.

The profiles are based on the reporting from the municipalities defined by the KL Gateway implementation guide found here: [KL Gateway Implementation Guide](http://build.fhir.org/ig/hl7dk/kl-gateway), which describes the details of the content futher.

The intended use of the implemention guide is either to use a RESTful API directly to receive the changes since a given point in time (last time asked) or receive push messages of changes in the format defined by the CareIncrementalDelivery profile in this this implementation guide. See [CareIncrementalDelivery](StructureDefinition-klgateway-care-incremental-delivery.html) and the [TestIncrementalDelivery](Bundle-TestIncrementalDelivery.html) example.

In case the data is pushed to the recipient, the frequency, grouping, and maximal number of results per page are agreed between the KL Gateway organization and the recipient.