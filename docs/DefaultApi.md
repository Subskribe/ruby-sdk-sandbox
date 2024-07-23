# SubskribeSandboxClient::DefaultApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_and_apply_payment**](DefaultApi.md#add_and_apply_payment) | **POST** /settlements/addAndApplyPayment | Apply a payment on a specific invoice
[**get_order_document**](DefaultApi.md#get_order_document) | **GET** /documentLinks/{id} | 
[**validate_address**](DefaultApi.md#validate_address) | **POST** /anrok/validate | Validate an address with Anrok
[**validate_address1**](DefaultApi.md#validate_address1) | **POST** /taxjar/validate | Validate an address with TaxJar


# **add_and_apply_payment**
> add_and_apply_payment(body)

Apply a payment on a specific invoice

Apply a payment per the specified parameters.

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

api_instance = SubskribeSandboxClient::DefaultApi.new

body = SubskribeSandboxClient::AddAndApplyPaymentApplicationJson.new # AddAndApplyPaymentApplicationJson | add and apply payment parameters in json


begin
  #Apply a payment on a specific invoice
  api_instance.add_and_apply_payment(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DefaultApi->add_and_apply_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddAndApplyPaymentApplicationJson**](AddAndApplyPaymentApplicationJson.md)| add and apply payment parameters in json | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_order_document**
> get_order_document(id)



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

api_instance = SubskribeSandboxClient::DefaultApi.new

id = 'id_example' # String | 


begin
  api_instance.get_order_document(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DefaultApi->get_order_document: #{e}"
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

 - **Content-Type**: Not defined
 - **Accept**: text/html, application/json



# **validate_address**
> AccountAddress validate_address(opts)

Validate an address with Anrok



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

api_instance = SubskribeSandboxClient::DefaultApi.new

opts = { 
  body: SubskribeSandboxClient::AccountAddress.new # AccountAddress | Address input as a JSON
}

begin
  #Validate an address with Anrok
  result = api_instance.validate_address(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DefaultApi->validate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountAddress**](AccountAddress.md)| Address input as a JSON | [optional] 

### Return type

[**AccountAddress**](AccountAddress.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **validate_address1**
> AccountAddress validate_address1(opts)

Validate an address with TaxJar

Returns a suggested addresses if found

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

api_instance = SubskribeSandboxClient::DefaultApi.new

opts = { 
  body: SubskribeSandboxClient::AccountAddress.new # AccountAddress | Address input as a JSON
}

begin
  #Validate an address with TaxJar
  result = api_instance.validate_address1(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DefaultApi->validate_address1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountAddress**](AccountAddress.md)| Address input as a JSON | [optional] 

### Return type

[**AccountAddress**](AccountAddress.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



