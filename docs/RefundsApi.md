# SubskribeSandboxClient::RefundsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_and_apply_refund**](RefundsApi.md#create_and_apply_refund) | **POST** /refunds | Create and apply refund
[**get_refund_by_id**](RefundsApi.md#get_refund_by_id) | **GET** /refunds/{id} | Get refund details
[**get_refunds**](RefundsApi.md#get_refunds) | **GET** /refunds | Get refunds


# **create_and_apply_refund**
> create_and_apply_refund(body)

Create and apply refund

Creates and applies a refund per the specified parameters. On success the id of the refund is returned.

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

api_instance = SubskribeSandboxClient::RefundsApi.new

body = SubskribeSandboxClient::RefundRequestJson.new # RefundRequestJson | refund request details json


begin
  #Create and apply refund
  api_instance.create_and_apply_refund(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RefundsApi->create_and_apply_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RefundRequestJson**](RefundRequestJson.md)| refund request details json | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_refund_by_id**
> Refund get_refund_by_id(account_id, id)

Get refund details

Get the details of the specified refund.

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

api_instance = SubskribeSandboxClient::RefundsApi.new

account_id = 'account_id_example' # String | id of the account

id = 'id_example' # String | id of the refund


begin
  #Get refund details
  result = api_instance.get_refund_by_id(account_id, id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RefundsApi->get_refund_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| id of the account | 
 **id** | **String**| id of the refund | 

### Return type

[**Refund**](Refund.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_refunds**
> Array&lt;RefundDetail&gt; get_refunds(account_id, opts)

Get refunds

Get all refunds for the specified account, OR if a credit memo number is specified in addition to the account id, get the details of only that.

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

api_instance = SubskribeSandboxClient::RefundsApi.new

account_id = 'account_id_example' # String | id of the account

opts = { 
  credit_memo_number: 'credit_memo_number_example' # String | id of a credit memo
}

begin
  #Get refunds
  result = api_instance.get_refunds(account_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RefundsApi->get_refunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| id of the account | 
 **credit_memo_number** | **String**| id of a credit memo | [optional] 

### Return type

[**Array&lt;RefundDetail&gt;**](RefundDetail.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



