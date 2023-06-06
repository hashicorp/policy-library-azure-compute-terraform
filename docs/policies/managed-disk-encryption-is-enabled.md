# Ensure that all azurerm_managed_disk resources are encrypted

| Provider        | Category              |
|-----------------|-----------------------|
| Microsoft Azure | Infrastructure (IaaS) |

## Overview
Encrypting the VM's OS and data disks ensures that all content is fully unrecoverable without a key and therefore protects the volumes from unwarranted reads. [Azure Data Encryption at Rest](https://docs.microsoft.com/en-us/azure/security/fundamentals/encryption-atrest) can be applied to both Linux and Windows virtual machines, as well as virtual machine scale sets.

## Policy Result (Pass)
```shell
    trace:
      managed-disk-encryption-is-enabled.sentinel:28:1 - Rule "main"
        Description:
          Ensure that all `azurerm_managed_disk` resources in the
          Terraform
          configuration contains an `encryption_settings` block and that
          `enabled` is set to 'true'.

        Value:
          true

      managed-disk-encryption-is-enabled.sentinel:10:1 - Rule "deny_undefined_encryption_settings"
        Value:
          true

      managed-disk-encryption-is-enabled.sentinel:17:1 - Rule "deny_unencrypted_managed_disk"
        Value:
          true
```