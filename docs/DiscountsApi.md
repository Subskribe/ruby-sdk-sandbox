# SubskribeSandboxClient::DiscountsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_discount**](DiscountsApi.md#add_discount) | **POST** /discounts | Create a discount
[**delete_discount**](DiscountsApi.md#delete_discount) | **DELETE** /discounts/{id} | Delete a discount
[**get_discount**](DiscountsApi.md#get_discount) | **GET** /discounts/{id} | Get discount
[**get_discounts**](DiscountsApi.md#get_discounts) | **GET** /discounts | Get discounts
[**update_discount**](DiscountsApi.md#update_discount) | **PUT** /discounts/{id} | Update discount details
[**update_discount_status**](DiscountsApi.md#update_discount_status) | **PUT** /discounts/{id}/status/{status} | Update discount status


# **add_discount**
> String add_discount(opts)

Create a discount

Creates a discount with the specified details. On success, the ID of the new discount is returned.

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

api_instance = SubskribeSandboxClient::DiscountsApi.new

opts = { 
  body: SubskribeSandboxClient::DiscountJson.new # DiscountJson | details of the discount
}

begin
  #Create a discount
  result = api_instance.add_discount(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DiscountsApi->add_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DiscountJson**](DiscountJson.md)| details of the discount | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_discount**
> delete_discount(id)

Delete a discount

Deletes a discount. Note that a discount may not be deleted if it is in use.

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

api_instance = SubskribeSandboxClient::DiscountsApi.new

id = 'id_example' # String | 


begin
  #Delete a discount
  api_instance.delete_discount(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DiscountsApi->delete_discount: #{e}"
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
 - **Accept**: application/json



# **get_discount**
> DiscountJson get_discount(id)

Get discount

Returns the details of the specified discount.

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

api_instance = SubskribeSandboxClient::DiscountsApi.new

id = 'id_example' # String | id of the discount


begin
  #Get discount
  result = api_instance.get_discount(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DiscountsApi->get_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the discount | 

### Return type

[**DiscountJson**](DiscountJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_discounts**
> Array&lt;DiscountJson&gt; get_discounts

Get discounts

Returns all discounts that have been defined

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

api_instance = SubskribeSandboxClient::DiscountsApi.new

begin
  #Get discounts
  result = api_instance.get_discounts
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DiscountsApi->get_discounts: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;DiscountJson&gt;**](DiscountJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_discount**
> update_discount(id, opts)

Update discount details

Updates the details of the specified discount. Note that a discount cannot be updated once it is in use by an order.

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

api_instance = SubskribeSandboxClient::DiscountsApi.new

id = 'id_example' # String | id of the discount

opts = { 
  body: SubskribeSandboxClient::DiscountJson.new # DiscountJson | 
}

begin
  #Update discount details
  api_instance.update_discount(id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DiscountsApi->update_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the discount | 
 **body** | [**DiscountJson**](DiscountJson.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_discount_status**
> update_discount_status(id, status)

Update discount status

Updates the status of a discount

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

api_instance = SubskribeSandboxClient::DiscountsApi.new

id = 'id_example' # String | id of the discount

status = 'status_example' # String | new status to set


begin
  #Update discount status
  api_instance.update_discount_status(id, status)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling DiscountsApi->update_discount_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the discount | 
 **status** | **String**| new status to set | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



