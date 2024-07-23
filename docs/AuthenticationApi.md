# SubskribeSandboxClient::AuthenticationApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_saml_integration**](AuthenticationApi.md#add_saml_integration) | **POST** /auth/saml | Add a saml integration
[**create_api_key**](AuthenticationApi.md#create_api_key) | **POST** /apikey | Create a new api key
[**get_all_api_keys**](AuthenticationApi.md#get_all_api_keys) | **GET** /apikey | Retrieves all API keys
[**get_api_key_by_id**](AuthenticationApi.md#get_api_key_by_id) | **GET** /apikey/{id} | Retrieve an API key by id
[**revoke_api_key**](AuthenticationApi.md#revoke_api_key) | **DELETE** /apikey/revoke | revoke all keys
[**revoke_api_key_by_id**](AuthenticationApi.md#revoke_api_key_by_id) | **DELETE** /apikey/revoke/{id} | revoke an API key by id


# **add_saml_integration**
> add_saml_integration(opts)

Add a saml integration

Adds a saml integration

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

api_instance = SubskribeSandboxClient::AuthenticationApi.new

opts = { 
  body: SubskribeSandboxClient::AuthSamlIntegrationJson.new # AuthSamlIntegrationJson | saml representing the integration
}

begin
  #Add a saml integration
  api_instance.add_saml_integration(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AuthenticationApi->add_saml_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuthSamlIntegrationJson**](AuthSamlIntegrationJson.md)| saml representing the integration | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_api_key**
> String create_api_key(opts)

Create a new api key

Create a new api key with the specified parameters. The new key is returned

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

api_instance = SubskribeSandboxClient::AuthenticationApi.new

opts = { 
  role: 'role_example', # String | Role-based permissions to be associated with the key. Specify this OR userId.
  expiry: 789, # Integer | Time of expiry in seconds since Epoch (GMT)
  user_id: 'user_id_example', # String | User to associate key with. Specify this OR role.
  entity_id: 'entity_id_example' # String | Scope of entities that the key has access to. Either specify a single entity or all entities (i.e. *).
}

begin
  #Create a new api key
  result = api_instance.create_api_key(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AuthenticationApi->create_api_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| Role-based permissions to be associated with the key. Specify this OR userId. | [optional] 
 **expiry** | **Integer**| Time of expiry in seconds since Epoch (GMT) | [optional] 
 **user_id** | **String**| User to associate key with. Specify this OR role. | [optional] 
 **entity_id** | **String**| Scope of entities that the key has access to. Either specify a single entity or all entities (i.e. *). | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_api_keys**
> get_all_api_keys

Retrieves all API keys

Retrieves a list of (maximum 500 items) all API keys (including expired and deactivated keys)

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

api_instance = SubskribeSandboxClient::AuthenticationApi.new

begin
  #Retrieves all API keys
  api_instance.get_all_api_keys
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AuthenticationApi->get_all_api_keys: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_api_key_by_id**
> get_api_key_by_id(id)

Retrieve an API key by id

Retrieve an api key referenced by its id

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

api_instance = SubskribeSandboxClient::AuthenticationApi.new

id = 'id_example' # String | 


begin
  #Retrieve an API key by id
  api_instance.get_api_key_by_id(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AuthenticationApi->get_api_key_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **revoke_api_key**
> revoke_api_key

revoke all keys

Revokes all keys for your tenant

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

api_instance = SubskribeSandboxClient::AuthenticationApi.new

begin
  #revoke all keys
  api_instance.revoke_api_key
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AuthenticationApi->revoke_api_key: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **revoke_api_key_by_id**
> revoke_api_key_by_id(id)

revoke an API key by id

Revoke an api key referenced by its id

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

api_instance = SubskribeSandboxClient::AuthenticationApi.new

id = 'id_example' # String | 


begin
  #revoke an API key by id
  api_instance.revoke_api_key_by_id(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AuthenticationApi->revoke_api_key_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



