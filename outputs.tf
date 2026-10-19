# Module owners should include the full resource via a 'resource' output
# https://azure.github.io/Azure-Verified-Modules/specs/terraform/#id-tffr2---category-outputs---additional-terraform-outputs
output "principal_id" {
  description = "Principal ID of the Hybrid Compute machine system-assigned identity."
  value       = azapi_resource.hybrid_compute_machine.identity[0].principal_id
}

output "resource_id" {
  description = "This is the full output for the resource."
  value       = azapi_resource.virtual_machine.id
}
