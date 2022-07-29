# Ensure that only approved extensions are installed

| Provider        | Category              |
|-----------------|-----------------------|
| Microsoft Azure | Infrastructure (IaaS) |

## Overview
Azure virtual machine extensions are small applications that run with administrative privileges on Azure virtual machines. These extensions could potentially access anything on a virtual machine and therefore only approved extensions should be used within an organizations Azure subscriptions.

## Policy Result (Pass)
```shell
    trace:
      only-approved-extensions-are-installed.sentinel:35:1 - Rule "main"
        Description:
          ------------------------------------------------------------
          Name:        only-approved-extensions-are-installed.sentinel
          Category:    Infrastructure (IaaS)
          Provider:    hashicorp/azurerm
          Resource:    azurerm_virtual_machine_extension
          Check:       Ensure that VM Extension type is allowed
          ------------------------------------------------------------
          Ensure that all `azurerm_virtual_machine_extension` resources
          in the Terraform Configuration only use an allowed extension
          type.
          ------------------------------------------------------------

        Value:
          true

      only-approved-extensions-are-installed.sentinel:18:1 - Rule "deny_unsupported_virtual_machine_extensions"
        Value:
          true
```