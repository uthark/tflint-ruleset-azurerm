<!--- This file generated by `tools/apispec-rule-gen/main.go`. DO NOT EDIT --->

# azurerm_maps_account_invalid_sku_name

Warns about values that appear to be invalid based on [azure-rest-api-specs](https://github.com/Azure/azure-rest-api-specs).

Allowed values are:
- S0
- S1
- G2

## Example

```hcl
resource "azurerm_maps_account" "foo" {
  sku_name = ... // invalid value
}
```

```
$ tflint
1 issue(s) found:

Error: "..." is an invalid value as sku_name (azurerm_maps_account_invalid_sku_name)

  on template.tf line 2:
  2:   sku_name = ... // invalid value

Reference: https://github.com/terraform-linters/tflint-ruleset-azurerm/blob/v0.1.0/docs/rules/azurerm_maps_account_invalid_sku_name.md

```

## Why

Requests containing invalid values will return an error when calling the API by `terraform apply`.

## How to Fix

Replace the warned value with a valid value.

## Source

This rule is automatically generated from [azure-rest-api-specs](https://github.com/Azure/azure-rest-api-specs). If you are uncertain about the warning, check the following API schema referenced by this rule.

https://github.com/Azure/azure-rest-api-specs/tree/master/specification/maps/resource-manager/Microsoft.Maps/stable/2021-02-01/maps-management.json