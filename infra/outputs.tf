output "resource_group_name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.rg.name
}

output "ai_foundry_project_url" {
  description = "URL of the AI Foundry project."
  value = try(
    azapi_resource.ai_foundry_project.body.properties.endpoint,
    format("https://%s.cognitiveservices.azure.com/projects/%s",
      try(azapi_resource.ai_foundry.body.properties.customSubDomainName, azapi_resource.ai_foundry.name),
      azapi_resource.ai_foundry_project.name
    )
  )
}
