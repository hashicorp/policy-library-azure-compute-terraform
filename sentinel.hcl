policy "managed-disk-encryption-is-enabled" {
  source = "./policies/managed-disk-encryption-is-enabled/managed-disk-encryption-is-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "only-approved-extensions-are-installed" {
  source = "./policies/only-approved-extensions-are-installed/only-approved-extensions-are-installed.sentinel"
  enforcement_level = "advisory"
}
