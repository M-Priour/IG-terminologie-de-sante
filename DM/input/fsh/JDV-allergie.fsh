Alias: $mms = http://id.who.int/icd/release/11/2024-01/mms

ValueSet: Allergie
Id: allergie
Title: "allergie"
Description: "JDV des allergies en CIM 11"
* ^status = #active
* ^version = "1.1.0"
* ^url = "https://smt.esante.gouv.fr/fhir/ValueSet/allergie"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension.valuePeriod.start = "2024-04-17T09:25:08.004+00:00"
* ^experimental = false
* ^publisher = "ANS"
* ^contact.name = "ANS"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://esante.gouv.fr"
* ^jurisdiction = urn:iso:std:iso:3166#FR "France"
* include codes from system $mms
    where concept is-a #http://id.who.int/icd/release/11/2024-01/mms/21927667
