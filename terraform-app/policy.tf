resource "oci_identity_policy" "policy" {
  count = var.counter
  compartment_id = var.tenancy_ocid
  description = "read only policy for ${oci_identity_compartment.compartment[count.index].name}"
  name = oci_identity_group.group[count.index].name
  statements = ["Allow group 'Default'/'${oci_identity_group.group[count.index].name}' to read buckets in compartment ${oci_identity_compartment.compartment[count.index].name}" , "Allow group 'Default'/'${oci_identity_group.group[count.index].name}' to read objects in compartment ${oci_identity_compartment.compartment[count.index].name}"]

}