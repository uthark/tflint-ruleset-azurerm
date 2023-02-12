mapping "azurerm_stream_analytics_output_mssql" {
  import_path = "azure-rest-api-specs/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/preview/2021-10-01-preview/outputs.json"

  name                      = OutputNameParameter
  resource_group_name       = any //ResourceGroupNameParameter
  stream_analytics_job_name = any //StreamingJobNameParameter
  server                    = AzureSqlDatabaseDataSourceProperties.server
  user                      = AzureSqlDatabaseDataSourceProperties.user
  password                  = AzureSqlDatabaseDataSourceProperties.password
  table                     = AzureSqlDatabaseDataSourceProperties.table
}