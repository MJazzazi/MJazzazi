resource "oci_objectstorage_object" "object" {
  count     = var.counter
  bucket    = oci_objectstorage_bucket.bucket[count.index].name
  content   = "data"
  namespace = var.namespace
  object    = "diagram"
}