resource "oci_objectstorage_bucket" "bucket" {
  count = var.counter
  compartment_id = oci_identity_compartment.compartment[count.index].id
  name           = "Bucket${var.userName[count.index]}"
  namespace      = var.namespace
}