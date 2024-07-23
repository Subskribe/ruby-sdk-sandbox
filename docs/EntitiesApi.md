# SubskribeSandboxClient::EntitiesApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_entity_migration**](EntitiesApi.md#account_entity_migration) | **POST** /entities/migrate/account | Move account to a target entity
[**composite_order_entity_migration**](EntitiesApi.md#composite_order_entity_migration) | **POST** /entities/migrate/compositeOrder | Move composite order to a target entity
[**create**](EntitiesApi.md#create) | **POST** /entities | Create an entity
[**delete_entity**](EntitiesApi.md#delete_entity) | **DELETE** /entities/{id} | Delete entity
[**get_entities**](EntitiesApi.md#get_entities) | **GET** /entities | Gets entities
[**get_entity_by_id**](EntitiesApi.md#get_entity_by_id) | **GET** /entities/{id} | Gets entity details
[**get_logo**](EntitiesApi.md#get_logo) | **GET** /entities/logo/{entityId} | Get entity logo
[**order_entity_migration**](EntitiesApi.md#order_entity_migration) | **POST** /entities/migrate/order | Update order entity
[**subscription_entity_migration**](EntitiesApi.md#subscription_entity_migration) | **POST** /entities/migrate/subscription | Move subscription to a target entity
[**upload_logo**](EntitiesApi.md#upload_logo) | **PUT** /entities/logo/{entityId} | Update entity logo


# **account_entity_migration**
> account_entity_migration(opts)

Move account to a target entity

Move account along with its subscriptions, orders, invoices and other associated transactions to a target entity

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

opts = { 
  target_entity_id: 'target_entity_id_example', # String | 
  account_id: 'account_id_example' # String | 
}

begin
  #Move account to a target entity
  api_instance.account_entity_migration(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->account_entity_migration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target_entity_id** | **String**|  | [optional] 
 **account_id** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **composite_order_entity_migration**
> composite_order_entity_migration(opts)

Move composite order to a target entity

Move composite order along with its subscriptions, orders and other associated transactions to a target entity

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

opts = { 
  target_entity_id: 'target_entity_id_example', # String | 
  composite_order_id: 'composite_order_id_example' # String | 
}

begin
  #Move composite order to a target entity
  api_instance.composite_order_entity_migration(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->composite_order_entity_migration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target_entity_id** | **String**|  | [optional] 
 **composite_order_id** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create**
> create(opts)

Create an entity

Create an entity. On success return the created entity.

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

opts = { 
  body: SubskribeSandboxClient::EntityJson.new # EntityJson | entity
}

begin
  #Create an entity
  api_instance.create(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EntityJson**](EntityJson.md)| entity | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_entity**
> delete_entity(id)

Delete entity

Delete the entity if there is no data associated with it.

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

id = 'id_example' # String | entity id


begin
  #Delete entity
  api_instance.delete_entity(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->delete_entity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| entity id | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_entities**
> Array&lt;EntityJson&gt; get_entities

Gets entities

Gets all entities

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

begin
  #Gets entities
  result = api_instance.get_entities
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->get_entities: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;EntityJson&gt;**](EntityJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_entity_by_id**
> Entity get_entity_by_id(id)

Gets entity details

Gets the entity details of the specified entity id

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

id = 'id_example' # String | entity id


begin
  #Gets entity details
  result = api_instance.get_entity_by_id(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->get_entity_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| entity id | 

### Return type

[**Entity**](Entity.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_logo**
> get_logo(entity_id)

Get entity logo

Get the current logo stored for the given entity

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

entity_id = 'entity_id_example' # String | 


begin
  #Get entity logo
  api_instance.get_logo(entity_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->get_logo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png, application/json



# **order_entity_migration**
> order_entity_migration(opts)

Update order entity

Move order to a target entity

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

opts = { 
  target_entity_id: 'target_entity_id_example', # String | 
  order_id: 'order_id_example' # String | 
}

begin
  #Update order entity
  api_instance.order_entity_migration(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->order_entity_migration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target_entity_id** | **String**|  | [optional] 
 **order_id** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **subscription_entity_migration**
> subscription_entity_migration(opts)

Move subscription to a target entity

Move subscription and associated transactions to a target entity

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

opts = { 
  target_entity_id: 'target_entity_id_example', # String | 
  subscription_id: 'subscription_id_example' # String | 
}

begin
  #Move subscription to a target entity
  api_instance.subscription_entity_migration(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->subscription_entity_migration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target_entity_id** | **String**|  | [optional] 
 **subscription_id** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload_logo**
> upload_logo(entity_id, opts)

Update entity logo

Updates the logo used in external facing communication such as order forms and invoices

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

api_instance = SubskribeSandboxClient::EntitiesApi.new

entity_id = 'entity_id_example' # String | 

opts = { 
  file: File.new('/path/to/file.txt') # File | 
}

begin
  #Update entity logo
  api_instance.upload_logo(entity_id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling EntitiesApi->upload_logo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **String**|  | 
 **file** | **File**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



