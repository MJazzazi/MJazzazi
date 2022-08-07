resource "oci_identity_compartment" "compartment" {
  count = var.counter
  compartment_id = var.tenancy_ocid
  description = "Compartment for Terraform resources."
  name = "compartment${var.userName[count.index]}"
}