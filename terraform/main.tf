provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "MyResourceGroup"
  location = "centralus"
}

resource "azurerm_service_plan" "plan" {
  name                = "MyAppServicePlan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku_name = "B1"
  os_type  = "Linux"
}

resource "azurerm_linux_web_app" "app" {
  name                = "MyAppService"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    application_stack {
      dotnet_version = "6.0"
    }
  }

  app_settings = {
    "SOME_KEY" = "SOME_VALUE"
  }
}

resource "azurerm_mssql_server" "sqlserver" {
  name                         = "mysqlserver"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = ""
}

resource "azurerm_mssql_database" "sqldb" {
  name      = "mysqldb"
  server_id = azurerm_mssql_server.sqlserver.id
}
