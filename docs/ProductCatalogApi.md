# SubskribeSandboxClient::ProductCatalogApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_plan**](ProductCatalogApi.md#activate_plan) | **PUT** /plans/{planId}/activate | Activate a plan
[**add_charge**](ProductCatalogApi.md#add_charge) | **POST** /plans/{planId}/charges | Add charge to plan
[**add_percent_of_plan_relationship**](ProductCatalogApi.md#add_percent_of_plan_relationship) | **POST** /plans/relationships/percentOf | Create percent of relationship
[**add_plan**](ProductCatalogApi.md#add_plan) | **POST** /plans | Create a plan
[**add_product**](ProductCatalogApi.md#add_product) | **POST** /products | Create a product
[**add_product_category**](ProductCatalogApi.md#add_product_category) | **POST** /product/categories | Create a product category
[**deactivate_plan**](ProductCatalogApi.md#deactivate_plan) | **PUT** /plans/{planId}/revertToDraft | Revert a plan to draft
[**delete_catalog_relationship_by_id**](ProductCatalogApi.md#delete_catalog_relationship_by_id) | **DELETE** /plans/relationships/{relationshipId} | Delete a catalog relationship
[**delete_charge**](ProductCatalogApi.md#delete_charge) | **DELETE** /plans/{planId}/charges/{chargeId} | Delete a charge
[**delete_plan**](ProductCatalogApi.md#delete_plan) | **DELETE** /plans/{planId} | Delete a plan
[**delete_product**](ProductCatalogApi.md#delete_product) | **DELETE** /products/{id} | Delete a product
[**delete_product_category**](ProductCatalogApi.md#delete_product_category) | **DELETE** /product/categories/{id} | Delete a product category
[**deprecate_plan**](ProductCatalogApi.md#deprecate_plan) | **PUT** /plans/{planId}/deprecate | Deprecate a plan
[**duplicate_plan**](ProductCatalogApi.md#duplicate_plan) | **POST** /plans/{planId}/duplicate | Duplicate a plan
[**export_product_catalog**](ProductCatalogApi.md#export_product_catalog) | **GET** /products/export | Export product catalog
[**get_catalog_relationship_by_id**](ProductCatalogApi.md#get_catalog_relationship_by_id) | **GET** /plans/relationships/{relationshipId} | Get relationship details
[**get_charge**](ProductCatalogApi.md#get_charge) | **GET** /plans/{planId}/charges/{chargeId} | Get charge details
[**get_charge_ledger_accounts**](ProductCatalogApi.md#get_charge_ledger_accounts) | **GET** /plans/{planId}/charges/{chargeId}/ledgerAccounts | Get ledger accounts
[**get_percent_of_relationships**](ProductCatalogApi.md#get_percent_of_relationships) | **GET** /plans/relationships/percentOf | Get percent of relationships for a plan
[**get_plan**](ProductCatalogApi.md#get_plan) | **GET** /plans/{planId} | Get plan details
[**get_plans**](ProductCatalogApi.md#get_plans) | **GET** /plans | Get plans
[**get_product**](ProductCatalogApi.md#get_product) | **GET** /products/{id} | Get product details.
[**get_product_categories**](ProductCatalogApi.md#get_product_categories) | **GET** /product/categories | Get product Categories
[**get_product_category**](ProductCatalogApi.md#get_product_category) | **GET** /product/categories/{id} | Get product category details
[**get_products**](ProductCatalogApi.md#get_products) | **GET** /products | Get products
[**get_target_plans_for_percent_of_plan_id**](ProductCatalogApi.md#get_target_plans_for_percent_of_plan_id) | **GET** /plans/relationships/percentOf/{planId} | Get percent of target plans
[**map_ledger_accounts_to_charge**](ProductCatalogApi.md#map_ledger_accounts_to_charge) | **PUT** /plans/{planId}/charges/{chargeId}/ledgerAccounts | Map ledger accounts
[**patch_charge**](ProductCatalogApi.md#patch_charge) | **PUT** /plans/{planId}/charges/{chargeId}/partial | Update non-financial charge details
[**reactivate_plan**](ProductCatalogApi.md#reactivate_plan) | **PUT** /plans/{planId}/reactivate | Reactivate a plan
[**update_charge**](ProductCatalogApi.md#update_charge) | **PUT** /plans/{planId}/charges/{chargeId} | Update charge details
[**update_plan**](ProductCatalogApi.md#update_plan) | **PUT** /plans/{planId} | Update plan
[**update_plan_metadata**](ProductCatalogApi.md#update_plan_metadata) | **PUT** /plans/{planId}/metadata | Update plan metadata
[**update_product**](ProductCatalogApi.md#update_product) | **PUT** /products/{id} | Update product details
[**update_product_category**](ProductCatalogApi.md#update_product_category) | **PUT** /product/categories/{id} | Update product category details


# **activate_plan**
> PlanJson activate_plan(plan_id)

Activate a plan

Marks a plan as active

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan


begin
  #Activate a plan
  result = api_instance.activate_plan(plan_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->activate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_charge**
> ChargeJson add_charge(plan_id, body)

Add charge to plan

Adds a charge to the specified plan.  On success the id of the new charge is returned

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan

body = SubskribeSandboxClient::ChargeJson.new # ChargeJson | json representing the charge details


begin
  #Add charge to plan
  result = api_instance.add_charge(plan_id, body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->add_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 
 **body** | [**ChargeJson**](ChargeJson.md)| json representing the charge details | 

### Return type

[**ChargeJson**](ChargeJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_percent_of_plan_relationship**
> add_percent_of_plan_relationship(body)

Create percent of relationship

Creates a percent of relationship between a charge and plan. On success the id of the relationship is returned.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

body = SubskribeSandboxClient::CatalogRelationship.new # CatalogRelationship | json representing the relationship


begin
  #Create percent of relationship
  api_instance.add_percent_of_plan_relationship(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->add_percent_of_plan_relationship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CatalogRelationship**](CatalogRelationship.md)| json representing the relationship | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_plan**
> PlanJson add_plan(body)

Create a plan

Creates a plan. On success the id of the new plan is returned.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

body = SubskribeSandboxClient::PlanJson.new # PlanJson | json of the plan details


begin
  #Create a plan
  result = api_instance.add_plan(body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->add_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PlanJson**](PlanJson.md)| json of the plan details | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_product**
> ProductJson add_product(body)

Create a product

Creates a product for your tenant. On success the id of the product is returned.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

body = SubskribeSandboxClient::ProductInputJson.new # ProductInputJson | product details json


begin
  #Create a product
  result = api_instance.add_product(body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->add_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductInputJson**](ProductInputJson.md)| product details json | 

### Return type

[**ProductJson**](ProductJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_product_category**
> ProductCategory add_product_category(body)

Create a product category

Creates a product category. On success the id of the category is returned.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

body = SubskribeSandboxClient::ProductCategory.new # ProductCategory | product category details json


begin
  #Create a product category
  result = api_instance.add_product_category(body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->add_product_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductCategory**](ProductCategory.md)| product category details json | 

### Return type

[**ProductCategory**](ProductCategory.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **deactivate_plan**
> PlanJson deactivate_plan(plan_id)

Revert a plan to draft

Marks a plan as draft

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan


begin
  #Revert a plan to draft
  result = api_instance.deactivate_plan(plan_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->deactivate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_catalog_relationship_by_id**
> CatalogRelationship delete_catalog_relationship_by_id(relationship_id)

Delete a catalog relationship

Deletes the specified catalog relationship

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

relationship_id = 'relationship_id_example' # String | id of the relationship


begin
  #Delete a catalog relationship
  result = api_instance.delete_catalog_relationship_by_id(relationship_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->delete_catalog_relationship_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relationship_id** | **String**| id of the relationship | 

### Return type

[**CatalogRelationship**](CatalogRelationship.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_charge**
> ChargeJson delete_charge(plan_id, charge_id)

Delete a charge

Removes a charge from a plan.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan

charge_id = 'charge_id_example' # String | id of the charge


begin
  #Delete a charge
  result = api_instance.delete_charge(plan_id, charge_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->delete_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 
 **charge_id** | **String**| id of the charge | 

### Return type

[**ChargeJson**](ChargeJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_plan**
> PlanJson delete_plan(plan_id)

Delete a plan

Deletes a plan. Note you can't delete a plan that's in use.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan


begin
  #Delete a plan
  result = api_instance.delete_plan(plan_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->delete_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_product**
> ProductJson delete_product(id)

Delete a product

Delete the specified product.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

id = 'id_example' # String | id of the product


begin
  #Delete a product
  result = api_instance.delete_product(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->delete_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the product | 

### Return type

[**ProductJson**](ProductJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_product_category**
> ProductCategory delete_product_category(id)

Delete a product category

Deletes the specified product category. Note that a product category can't be delete once it's in use.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

id = 'id_example' # String | id of the category


begin
  #Delete a product category
  result = api_instance.delete_product_category(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->delete_product_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the category | 

### Return type

[**ProductCategory**](ProductCategory.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **deprecate_plan**
> PlanJson deprecate_plan(plan_id)

Deprecate a plan

Marks a plan as deprecated. Once deprecated a plan may not be attached to new orders.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan


begin
  #Deprecate a plan
  result = api_instance.deprecate_plan(plan_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->deprecate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **duplicate_plan**
> PlanJson duplicate_plan(plan_id)

Duplicate a plan

Duplicates the specified plan. On success the new plan id is returned.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan to duplicate


begin
  #Duplicate a plan
  result = api_instance.duplicate_plan(plan_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->duplicate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan to duplicate | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **export_product_catalog**
> export_product_catalog

Export product catalog

Export the product catalog in CSV format.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

begin
  #Export product catalog
  api_instance.export_product_catalog
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->export_product_catalog: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_catalog_relationship_by_id**
> CatalogRelationship get_catalog_relationship_by_id(relationship_id)

Get relationship details

Gets the details of the specified catalog relationship.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

relationship_id = 'relationship_id_example' # String | id of the relationship


begin
  #Get relationship details
  result = api_instance.get_catalog_relationship_by_id(relationship_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_catalog_relationship_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relationship_id** | **String**| id of the relationship | 

### Return type

[**CatalogRelationship**](CatalogRelationship.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_charge**
> ChargeJson get_charge(plan_id, charge_id)

Get charge details

Gets the details of the specified charge on the specified plan.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan

charge_id = 'charge_id_example' # String | id of the charge


begin
  #Get charge details
  result = api_instance.get_charge(plan_id, charge_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 
 **charge_id** | **String**| id of the charge | 

### Return type

[**ChargeJson**](ChargeJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_charge_ledger_accounts**
> Array&lt;LedgerAccount&gt; get_charge_ledger_accounts(plan_id, charge_id)

Get ledger accounts

Gets the ledger accounts mapped to the specified charge

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan

charge_id = 'charge_id_example' # String | id of the charge


begin
  #Get ledger accounts
  result = api_instance.get_charge_ledger_accounts(plan_id, charge_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_charge_ledger_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 
 **charge_id** | **String**| id of the charge | 

### Return type

[**Array&lt;LedgerAccount&gt;**](LedgerAccount.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_percent_of_relationships**
> Array&lt;CatalogRelationship&gt; get_percent_of_relationships(from_plan_id)

Get percent of relationships for a plan

Gets the percent of relationships for the specified plan.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

from_plan_id = 'from_plan_id_example' # String | id of the plan


begin
  #Get percent of relationships for a plan
  result = api_instance.get_percent_of_relationships(from_plan_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_percent_of_relationships: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from_plan_id** | **String**| id of the plan | 

### Return type

[**Array&lt;CatalogRelationship&gt;**](CatalogRelationship.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_plan**
> PlanJson get_plan(plan_id)

Get plan details

Returns the details of the specified plan.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan


begin
  #Get plan details
  result = api_instance.get_plan(plan_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_plans**
> PlanJsonPaginationResponse get_plans(opts)

Get plans

Returns all plans for a product. The result is paginated. To retrieve all results pass the cursor returned from a call to the next call until all results are returned.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

opts = { 
  product_id: 'product_id_example', # String | id of the product
  status: 'status_example', # String | filter by plan status
  cursor: 'cursor_example', # String | cursor from the last call
  limit: 56 # Integer | number of results per page
}

begin
  #Get plans
  result = api_instance.get_plans(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_plans: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| id of the product | [optional] 
 **status** | **String**| filter by plan status | [optional] 
 **cursor** | [**String**](.md)| cursor from the last call | [optional] 
 **limit** | **Integer**| number of results per page | [optional] 

### Return type

[**PlanJsonPaginationResponse**](PlanJsonPaginationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_product**
> ProductJson get_product(id)

Get product details.

Gets the details of the specified product.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

id = 'id_example' # String | id of the product


begin
  #Get product details.
  result = api_instance.get_product(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the product | 

### Return type

[**ProductJson**](ProductJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_product_categories**
> ProductCategoryPaginationResponse get_product_categories(opts)

Get product Categories

Gets all product categories for your tenant. The results are paginated. To fetch all results pass the cursor returned from a call to the subsequent calls until all results are returned. Initially the cursor should not be specified.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

opts = { 
  cursor: 'cursor_example', # String | cursor from prior call
  limit: 56 # Integer | number of results per page
}

begin
  #Get product Categories
  result = api_instance.get_product_categories(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_product_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | [**String**](.md)| cursor from prior call | [optional] 
 **limit** | **Integer**| number of results per page | [optional] 

### Return type

[**ProductCategoryPaginationResponse**](ProductCategoryPaginationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_product_category**
> ProductCategory get_product_category(id)

Get product category details

Gets the details of the specified product category

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

id = 'id_example' # String | id of the category


begin
  #Get product category details
  result = api_instance.get_product_category(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_product_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the category | 

### Return type

[**ProductCategory**](ProductCategory.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_products**
> ProductJsonPaginationResponse get_products(opts)

Get products

Returns all products for your tenant. The results on paginated. To fetch them all pass the cursor returned from a call to the subsequent call until all results are fetched. Initially the cursor should not be specified.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

opts = { 
  cursor: 'cursor_example', # String | cursor received from prior call
  limit: 56 # Integer | number of results per page
}

begin
  #Get products
  result = api_instance.get_products(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | [**String**](.md)| cursor received from prior call | [optional] 
 **limit** | **Integer**| number of results per page | [optional] 

### Return type

[**ProductJsonPaginationResponse**](ProductJsonPaginationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_target_plans_for_percent_of_plan_id**
> CatalogRelationship get_target_plans_for_percent_of_plan_id(plan_id)

Get percent of target plans

Gets the list of percent of charge target plans.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | 


begin
  #Get percent of target plans
  result = api_instance.get_target_plans_for_percent_of_plan_id(plan_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->get_target_plans_for_percent_of_plan_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**|  | 

### Return type

[**CatalogRelationship**](CatalogRelationship.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **map_ledger_accounts_to_charge**
> Array&lt;LedgerAccount&gt; map_ledger_accounts_to_charge(plan_id, charge_id, body)

Map ledger accounts

Map ledger accounts to the specified charge for the specified plan.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan

charge_id = 'charge_id_example' # String | id of the charge

body = [SubskribeSandboxClient::Array<String>.new] # Array<String> | list of the ledger account ids


begin
  #Map ledger accounts
  result = api_instance.map_ledger_accounts_to_charge(plan_id, charge_id, body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->map_ledger_accounts_to_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 
 **charge_id** | **String**| id of the charge | 
 **body** | **Array&lt;String&gt;**| list of the ledger account ids | 

### Return type

[**Array&lt;LedgerAccount&gt;**](LedgerAccount.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_charge**
> ChargeJson patch_charge(plan_id, charge_id, opts)

Update non-financial charge details

Updates certain details of the specified charge which won't impact its financial treatment

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan

charge_id = 'charge_id_example' # String | id of the charge

opts = { 
  body: SubskribeSandboxClient::ChargePartialJson.new # ChargePartialJson | 
}

begin
  #Update non-financial charge details
  result = api_instance.patch_charge(plan_id, charge_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->patch_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 
 **charge_id** | **String**| id of the charge | 
 **body** | [**ChargePartialJson**](ChargePartialJson.md)|  | [optional] 

### Return type

[**ChargeJson**](ChargeJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reactivate_plan**
> PlanJson reactivate_plan(plan_id)

Reactivate a plan

Reactivates a deprecated plan.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan


begin
  #Reactivate a plan
  result = api_instance.reactivate_plan(plan_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->reactivate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_charge**
> update_charge(plan_id, charge_id, opts)

Update charge details

Updates the details of the specified charge on the specified plan.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan associated with the charge

charge_id = 'charge_id_example' # String | id of the charge

opts = { 
  body: SubskribeSandboxClient::ChargeJson.new # ChargeJson | 
}

begin
  #Update charge details
  api_instance.update_charge(plan_id, charge_id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->update_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan associated with the charge | 
 **charge_id** | **String**| id of the charge | 
 **body** | [**ChargeJson**](ChargeJson.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_plan**
> PlanJson update_plan(plan_id, body)

Update plan

Updates the details of the specified plan. Note you can't update the details of a plan once it's in use.

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | id of the plan

body = SubskribeSandboxClient::PlanJson.new # PlanJson | json of the plan details


begin
  #Update plan
  result = api_instance.update_plan(plan_id, body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->update_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| id of the plan | 
 **body** | [**PlanJson**](PlanJson.md)| json of the plan details | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_plan_metadata**
> PlanJson update_plan_metadata(plan_id, body)

Update plan metadata

Update plan metadata. For now, this can be used only to change the entities assigned to a plan

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

plan_id = 'plan_id_example' # String | plan id

body = SubskribeSandboxClient::PlanMetadataJson.new # PlanMetadataJson | plan metadata to be updated


begin
  #Update plan metadata
  result = api_instance.update_plan_metadata(plan_id, body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->update_plan_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_id** | **String**| plan id | 
 **body** | [**PlanMetadataJson**](PlanMetadataJson.md)| plan metadata to be updated | 

### Return type

[**PlanJson**](PlanJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_product**
> update_product(id, body)

Update product details

Updates the details of the specified product

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

id = 'id_example' # String | id of the product

body = SubskribeSandboxClient::ProductInputJson.new # ProductInputJson | product details json


begin
  #Update product details
  api_instance.update_product(id, body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->update_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the product | 
 **body** | [**ProductInputJson**](ProductInputJson.md)| product details json | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_product_category**
> update_product_category(id, body)

Update product category details

Updates the details of a product category

### Example
```ruby
# load the gem
require 'subskribe_sandbox'
# setup authorization
SubskribeSandboxClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeSandboxClient::ProductCatalogApi.new

id = 'id_example' # String | id of the category

body = SubskribeSandboxClient::ProductCategory.new # ProductCategory | product category details json


begin
  #Update product category details
  api_instance.update_product_category(id, body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ProductCatalogApi->update_product_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the category | 
 **body** | [**ProductCategory**](ProductCategory.md)| product category details json | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



