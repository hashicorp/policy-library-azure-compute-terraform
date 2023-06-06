# Ensure that only approved extensions are installed

| Provider        | Category              |
|-----------------|-----------------------|
| Microsoft Azure | Infrastructure (IaaS) |

## Overview
Azure virtual machine extensions are small applications that run with administrative privileges on Azure virtual machines. These extensions could potentially access anything on a virtual machine and therefore only approved extensions should be used within an organizations Azure subscriptions.

## Parameters
The following parameter(s) can be supplied for the policy:
| Name                   | Type | Default                                                            |
|------------------------|------|--------------------------------------------------------------------|
| deniedVMExtensionTypes | List | ["CustomScriptExtension", "CustomScript", "CustomScriptForLinux",] |

## Policy Result (Pass)
```shell
    trace:
      only-approved-extensions-are-installed.sentinel:24:1 - Rule "main"
        Description:
          Ensure that all `azurerm_virtual_machine_extension` resources in
          the Terraform
          configuration only use an allowed extension type.

        Value:
          true

      only-approved-extensions-are-installed.sentinel:16:1 - Rule "deny_unsupported_virtual_machine_extensions"
        Value:
          true
```