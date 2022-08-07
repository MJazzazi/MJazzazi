resource "oci_identity_group" "group" {
  count = var.counter
  compartment_id = var.tenancy_ocid
  description = "read only group for Compartment${var.userName[count.index]}"
  name = "ReadCompartment${var.userName[count.index]}"

}