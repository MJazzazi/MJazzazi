resource "oci_identity_user_group_membership" "test_user_group_membership" {
  count = var.counter
  group_id = oci_identity_group.group[count.index].id
  user_id = oci_identity_user.user[count.index].id
}