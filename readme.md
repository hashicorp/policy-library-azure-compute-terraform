# Azure Compute Sentinel Policies for Terraform
This library, provides prescriptive Terraform policies that can be used to establish secure Terraform configuration for Microsoft Azure. The policies that are contained in this library are based on the [CIS Microsoft Azure Foundations Security Benchmark](https://www.cisecurity.org/benchmark/azure). Terraform Cloud/Enterprise users can use the policies in this library to establish a foundational level of security for the services that they are adopting in Microsoft Azure.

> **NOTE:**
>
> This Policy Library is not an exhaustive list of all of possible security configurations and architecture that is available in Microsoft Azure. If you have questions, comments, or have identified ways for us to improve this library, please create [a new GitHub issue](https://github.com/hashicorp/policy-library-azure-compute-terraform/issues/new/choose).
>
> Alternatively, We welcome any contributions that improve the quality of this library! To learn more about contributing and suggesting changes to this library, refer to the ![contributing guide](CONTRIBUTING.md).

---

## Policies
This library covers the following security recommendations for configuring Virtual Machine resources in a Microsoft Azure subscription.

-  Ensure that all managed disks (OS and Data) are encrypted ([docs](https://github.com/rclark/policy-library-azure-compute-terraform-policies/blob/main/docs/policies/managed-disk-encryption-is-enabled.md) | [code](https://github.com/rclark/policy-library-azure-compute-terraform-policies/blob/main/policies/managed-disk-encryption-is-enabled/managed-disk-encryption-is-enabled.sentinel))
-  Ensure that only approved extensions are installed ([docs](https://github.com/rclark/policy-library-azure-compute-terraform-policies/blob/main/docs/policies/only-approved-extensions-are-installed.md) | [code](https://github.com/rclark/policy-library-azure-compute-terraform-policies/blob/main/policies/only-approved-extensions-are-installed/only-approved-extensions-are-installed.sentinel))

