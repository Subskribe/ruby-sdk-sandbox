# SubskribeSandboxClient::CustomFieldApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_custom_field_definition**](CustomFieldApi.md#create_custom_field_definition) | **POST** /customFieldDefinition | Create a custom field definition
[**delete_custom_field_definition**](CustomFieldApi.md#delete_custom_field_definition) | **DELETE** /customFieldDefinition/{id} | Delete a custom field definition
[**get_custom_field_definitions**](CustomFieldApi.md#get_custom_field_definitions) | **GET** /customFieldDefinition/{parentObjectType} | Get custom field definitions
[**get_custom_fields**](CustomFieldApi.md#get_custom_fields) | **GET** /customField/{parentObjectType}/{parentObjectId} | Get custom fields by type and parent object id
[**update_custom_field**](CustomFieldApi.md#update_custom_field) | **PUT** /customField/{parentObjectType}/{parentObjectId}/{customFieldName} | Update an existing set of custom fields
[**update_custom_field_definition**](CustomFieldApi.md#update_custom_field_definition) | **PUT** /customFieldDefinition/{id} | Update an existing custom field definition
[**update_custom_fields**](CustomFieldApi.md#update_custom_fields) | **PUT** /customField/{parentObjectType}/{parentObjectId} | Update an existing set of custom fields


# **create_custom_field_definition**
> String create_custom_field_definition(body)

Create a custom field definition

Creates a new custom field definition for your tenant. On success the id of the custom field definition is returned.

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

api_instance = SubskribeSandboxClient::CustomFieldApi.new

body = SubskribeSandboxClient::CustomFieldDefinitionCreateInput.new # CustomFieldDefinitionCreateInput | custom field definition values


begin
  #Create a custom field definition
  result = api_instance.create_custom_field_definition(body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomFieldApi->create_custom_field_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CustomFieldDefinitionCreateInput**](CustomFieldDefinitionCreateInput.md)| custom field definition values | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_custom_field_definition**
> CustomFieldDefinitionJson delete_custom_field_definition(id)

Delete a custom field definition

Deletes an existing custom field definition for your tenant. On success the deleted custom field definition object is returned.

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

api_instance = SubskribeSandboxClient::CustomFieldApi.new

id = 'id_example' # String | object type custom fields are attached to


begin
  #Delete a custom field definition
  result = api_instance.delete_custom_field_definition(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomFieldApi->delete_custom_field_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| object type custom fields are attached to | 

### Return type

[**CustomFieldDefinitionJson**](CustomFieldDefinitionJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_custom_field_definitions**
> Array&lt;CustomFieldDefinitionJson&gt; get_custom_field_definitions(parent_object_type)

Get custom field definitions

Returns all custom field definitions for a specific parent object type

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

api_instance = SubskribeSandboxClient::CustomFieldApi.new

parent_object_type = 'parent_object_type_example' # String | object type custom fields are attached to


begin
  #Get custom field definitions
  result = api_instance.get_custom_field_definitions(parent_object_type)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomFieldApi->get_custom_field_definitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent_object_type** | **String**| object type custom fields are attached to | 

### Return type

[**Array&lt;CustomFieldDefinitionJson&gt;**](CustomFieldDefinitionJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_custom_fields**
> get_custom_fields(parent_object_type, parent_object_id)

Get custom fields by type and parent object id

Returns all custom fields for a specific parent object type and id

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

api_instance = SubskribeSandboxClient::CustomFieldApi.new

parent_object_type = 'parent_object_type_example' # String | object type custom fields are attached to

parent_object_id = 'parent_object_id_example' # String | Id of the parent object


begin
  #Get custom fields by type and parent object id
  api_instance.get_custom_fields(parent_object_type, parent_object_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomFieldApi->get_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent_object_type** | **String**| object type custom fields are attached to | 
 **parent_object_id** | **String**| Id of the parent object | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_custom_field**
> update_custom_field(parent_object_type, parent_object_id, custom_field_name, body)

Update an existing set of custom fields

Updates an existing set of custom fields for a given parent object type and id. On success the update custom fields are returned.

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

api_instance = SubskribeSandboxClient::CustomFieldApi.new

parent_object_type = 'parent_object_type_example' # String | object type custom fields are attached to

parent_object_id = 'parent_object_id_example' # String | Id of the parent object

custom_field_name = 'custom_field_name_example' # String | Name of the custom field to be updated

body = SubskribeSandboxClient::CustomFieldUpdateInput.new # CustomFieldUpdateInput | custom field value


begin
  #Update an existing set of custom fields
  api_instance.update_custom_field(parent_object_type, parent_object_id, custom_field_name, body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomFieldApi->update_custom_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent_object_type** | **String**| object type custom fields are attached to | 
 **parent_object_id** | **String**| Id of the parent object | 
 **custom_field_name** | **String**| Name of the custom field to be updated | 
 **body** | [**CustomFieldUpdateInput**](CustomFieldUpdateInput.md)| custom field value | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_custom_field_definition**
> CustomFieldDefinitionJson update_custom_field_definition(id, body)

Update an existing custom field definition

Updates an existing custom field definition for your tenant. On success the update custom field definition is returned.

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

api_instance = SubskribeSandboxClient::CustomFieldApi.new

id = 'id_example' # String | 

body = SubskribeSandboxClient::CustomFieldDefinitionUpdateInput.new # CustomFieldDefinitionUpdateInput | custom field definition values


begin
  #Update an existing custom field definition
  result = api_instance.update_custom_field_definition(id, body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomFieldApi->update_custom_field_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**CustomFieldDefinitionUpdateInput**](CustomFieldDefinitionUpdateInput.md)| custom field definition values | 

### Return type

[**CustomFieldDefinitionJson**](CustomFieldDefinitionJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_custom_fields**
> update_custom_fields(parent_object_type, parent_object_id, body)

Update an existing set of custom fields

Updates an existing set of custom fields for a given parent object type and id. On success the update custom fields are returned.

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

api_instance = SubskribeSandboxClient::CustomFieldApi.new

parent_object_type = 'parent_object_type_example' # String | object type custom fields are attached to

parent_object_id = 'parent_object_id_example' # String | Id of the parent object

body = nil # Object | custom field values


begin
  #Update an existing set of custom fields
  api_instance.update_custom_fields(parent_object_type, parent_object_id, body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomFieldApi->update_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent_object_type** | **String**| object type custom fields are attached to | 
 **parent_object_id** | **String**| Id of the parent object | 
 **body** | **Object**| custom field values | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



