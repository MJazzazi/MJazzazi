resource "oci_identity_user" "user" {
  count = var.counter
  compartment_id = var.tenancy_ocid
  description = oci_identity_compartment.compartment[count.index].name
  name = var.userName[count.index]
  email = var.E-mail[count.index]

}