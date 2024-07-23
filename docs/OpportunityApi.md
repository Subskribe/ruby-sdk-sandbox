# SubskribeSandboxClient::OpportunityApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_opportunity**](OpportunityApi.md#create_opportunity) | **POST** /opportunity | Creates a standalone opportunity
[**reset_opportunity_closed_state**](OpportunityApi.md#reset_opportunity_closed_state) | **POST** /opportunity/{id}/open | Opens an opportunity
[**update_opportunity**](OpportunityApi.md#update_opportunity) | **PUT** /opportunity/{id} | Updates a standalone opportunity


# **create_opportunity**
> OpportunityJson create_opportunity(opts)

Creates a standalone opportunity

Returns the details of a specified opportunity

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

api_instance = SubskribeSandboxClient::OpportunityApi.new

opts = { 
  body: SubskribeSandboxClient::OpportunityRestJson.new # OpportunityRestJson | 
}

begin
  #Creates a standalone opportunity
  result = api_instance.create_opportunity(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OpportunityApi->create_opportunity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OpportunityRestJson**](OpportunityRestJson.md)|  | [optional] 

### Return type

[**OpportunityJson**](OpportunityJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reset_opportunity_closed_state**
> OpportunityJson reset_opportunity_closed_state(id)

Opens an opportunity

Returns the details of the updated opportunity

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

api_instance = SubskribeSandboxClient::OpportunityApi.new

id = 'id_example' # String | crm id or native id of the opportunity


begin
  #Opens an opportunity
  result = api_instance.reset_opportunity_closed_state(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OpportunityApi->reset_opportunity_closed_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| crm id or native id of the opportunity | 

### Return type

[**OpportunityJson**](OpportunityJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_opportunity**
> OpportunityJson update_opportunity(id, opts)

Updates a standalone opportunity

Returns the details of the updated opportunity

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

api_instance = SubskribeSandboxClient::OpportunityApi.new

id = 'id_example' # String | id of the opportunity

opts = { 
  body: SubskribeSandboxClient::OpportunityRestJson.new # OpportunityRestJson | 
}

begin
  #Updates a standalone opportunity
  result = api_instance.update_opportunity(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OpportunityApi->update_opportunity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the opportunity | 
 **body** | [**OpportunityRestJson**](OpportunityRestJson.md)|  | [optional] 

### Return type

[**OpportunityJson**](OpportunityJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



