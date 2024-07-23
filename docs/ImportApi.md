# SubskribeSandboxClient::ImportApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_flatfile_workbook**](ImportApi.md#create_flatfile_workbook) | **POST** /import/flatfile/{domain} | Create a Flatfile workbook
[**get_account_contacts_in_import_format**](ImportApi.md#get_account_contacts_in_import_format) | **GET** /import/export/accountContact | Get account contacts for export
[**get_amendment_order_export_in_import_format**](ImportApi.md#get_amendment_order_export_in_import_format) | **GET** /import/export/amendmentOrders | Get amendment orders in import CSV format
[**get_available_schemas**](ImportApi.md#get_available_schemas) | **GET** /import/schemas | Return available schemas
[**get_catalog_data_in_import_format**](ImportApi.md#get_catalog_data_in_import_format) | **GET** /import/export/catalog | Get catalog data for export
[**get_data_import_by_id**](ImportApi.md#get_data_import_by_id) | **GET** /import/{importId} | Gets an import item
[**get_data_imports**](ImportApi.md#get_data_imports) | **GET** /import | Gets all import items
[**get_import_result1**](ImportApi.md#get_import_result1) | **GET** /import/{importId}/result | Get import details
[**get_new_order_export_in_import_format**](ImportApi.md#get_new_order_export_in_import_format) | **GET** /import/export/newOrders | Get new orders in import CSV format
[**process_import**](ImportApi.md#process_import) | **PUT** /import/{importId}/process | Process an import by ID
[**validate_multi_part_file_import**](ImportApi.md#validate_multi_part_file_import) | **POST** /import | Validate import file


# **create_flatfile_workbook**
> FlatfileWorkbookResponse create_flatfile_workbook(domain)

Create a Flatfile workbook

Creates a Flatfile workbook and adds it to a space

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

api_instance = SubskribeSandboxClient::ImportApi.new

domain = 'domain_example' # String | the domain to import


begin
  #Create a Flatfile workbook
  result = api_instance.create_flatfile_workbook(domain)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->create_flatfile_workbook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| the domain to import | 

### Return type

[**FlatfileWorkbookResponse**](FlatfileWorkbookResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account_contacts_in_import_format**
> get_account_contacts_in_import_format

Get account contacts for export

Gets account contacts in a format appropriate for re-import. On success, the output is a csv containing the account and contacts.

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

api_instance = SubskribeSandboxClient::ImportApi.new

begin
  #Get account contacts for export
  api_instance.get_account_contacts_in_import_format
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->get_account_contacts_in_import_format: #{e}"
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
 - **Accept**: application/octet-stream, application/json



# **get_amendment_order_export_in_import_format**
> get_amendment_order_export_in_import_format(opts)

Get amendment orders in import CSV format

Gets amendment orders in a format appropriate for re-import for the given generation. On success, the output is a csv containing the orders.

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

api_instance = SubskribeSandboxClient::ImportApi.new

opts = { 
  generation: 56, # Integer | the generation of amendments to include in the export, generations are defined as 1 based index of number of amendments applied to subscription
  use_real_ids: true # BOOLEAN | use the subskribe ID instead of external ID for exported objects
}

begin
  #Get amendment orders in import CSV format
  api_instance.get_amendment_order_export_in_import_format(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->get_amendment_order_export_in_import_format: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generation** | **Integer**| the generation of amendments to include in the export, generations are defined as 1 based index of number of amendments applied to subscription | [optional] 
 **use_real_ids** | **BOOLEAN**| use the subskribe ID instead of external ID for exported objects | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **get_available_schemas**
> Hash&lt;String, Array&lt;Object&gt;&gt; get_available_schemas

Return available schemas

Returns the set of schemas available for import

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

api_instance = SubskribeSandboxClient::ImportApi.new

begin
  #Return available schemas
  result = api_instance.get_available_schemas
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->get_available_schemas: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Array&lt;Object&gt;&gt;**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_catalog_data_in_import_format**
> get_catalog_data_in_import_format

Get catalog data for export

Gets catalog data in a format appropriate for re-import. On success, the output is a csv containing the catalog data containing Product, Plan and Charge data.

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

api_instance = SubskribeSandboxClient::ImportApi.new

begin
  #Get catalog data for export
  api_instance.get_catalog_data_in_import_format
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->get_catalog_data_in_import_format: #{e}"
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
 - **Accept**: application/octet-stream, application/json



# **get_data_import_by_id**
> DataImport get_data_import_by_id(import_id)

Gets an import item

Gets an item that was imported by its ID

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

api_instance = SubskribeSandboxClient::ImportApi.new

import_id = 'import_id_example' # String | id of the item


begin
  #Gets an import item
  result = api_instance.get_data_import_by_id(import_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->get_data_import_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_id** | **String**| id of the item | 

### Return type

[**DataImport**](DataImport.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_data_imports**
> DataImport get_data_imports

Gets all import items

Gets all items that was imported

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

api_instance = SubskribeSandboxClient::ImportApi.new

begin
  #Gets all import items
  result = api_instance.get_data_imports
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->get_data_imports: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DataImport**](DataImport.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_import_result1**
> get_import_result1(import_id)

Get import details

Returns the details of an import by its ID

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

api_instance = SubskribeSandboxClient::ImportApi.new

import_id = 'import_id_example' # String | 


begin
  #Get import details
  api_instance.get_import_result1(import_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->get_import_result1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **get_new_order_export_in_import_format**
> get_new_order_export_in_import_format(opts)

Get new orders in import CSV format

Gets new orders in a format appropriate for re-import. On success, the output is a csv containing the orders.

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

api_instance = SubskribeSandboxClient::ImportApi.new

opts = { 
  use_real_ids: true # BOOLEAN | use the subskribe ID instead of external ID for exported objects
}

begin
  #Get new orders in import CSV format
  api_instance.get_new_order_export_in_import_format(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->get_new_order_export_in_import_format: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **use_real_ids** | **BOOLEAN**| use the subskribe ID instead of external ID for exported objects | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **process_import**
> DataImport process_import(import_id)

Process an import by ID

Processes the import specified.

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

api_instance = SubskribeSandboxClient::ImportApi.new

import_id = 'import_id_example' # String | 


begin
  #Process an import by ID
  result = api_instance.process_import(import_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->process_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_id** | **String**|  | 

### Return type

[**DataImport**](DataImport.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **validate_multi_part_file_import**
> String validate_multi_part_file_import(opts)

Validate import file

Validates a multi-part import file. Returns an import ID on success.

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

api_instance = SubskribeSandboxClient::ImportApi.new

opts = { 
  file: File.new('/path/to/file.txt') # File | 
}

begin
  #Validate import file
  result = api_instance.validate_multi_part_file_import(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ImportApi->validate_multi_part_file_import: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



