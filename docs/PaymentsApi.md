# SubskribeSandboxClient::PaymentsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_payment**](PaymentsApi.md#get_account_payment) | **GET** /payments/account/{id} | Get payments
[**get_account_payment_management_link**](PaymentsApi.md#get_account_payment_management_link) | **GET** /payments/account-payment/{id} | Get account payment management link
[**get_payment**](PaymentsApi.md#get_payment) | **GET** /payments/{id} | Get payment details
[**get_payment_balance**](PaymentsApi.md#get_payment_balance) | **GET** /payments/{id}/balance | Get payment balance
[**get_payment_configuration**](PaymentsApi.md#get_payment_configuration) | **GET** /payments/configuration | Get payment configuration
[**get_payments**](PaymentsApi.md#get_payments) | **GET** /payments | Get all payments
[**update_payment_configuration**](PaymentsApi.md#update_payment_configuration) | **POST** /payments/configuration | Update payment configuration
[**void_payment**](PaymentsApi.md#void_payment) | **PUT** /payments/{id}/void | Voids a payment


# **get_account_payment**
> Array&lt;PaymentJson&gt; get_account_payment(id)

Get payments

Returns the payments for the specified account

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

api_instance = SubskribeSandboxClient::PaymentsApi.new

id = 'id_example' # String | id of the account


begin
  #Get payments
  result = api_instance.get_account_payment(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_account_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the account | 

### Return type

[**Array&lt;PaymentJson&gt;**](PaymentJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_payment_management_link**
> String get_account_payment_management_link(id)

Get account payment management link

Returns a payment management link for an account

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

api_instance = SubskribeSandboxClient::PaymentsApi.new

id = 'id_example' # String | 


begin
  #Get account payment management link
  result = api_instance.get_account_payment_management_link(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_account_payment_management_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment**
> PaymentJson get_payment(id)

Get payment details

Gets the details of the specified payment

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

api_instance = SubskribeSandboxClient::PaymentsApi.new

id = 'id_example' # String | id of the payment


begin
  #Get payment details
  result = api_instance.get_payment(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the payment | 

### Return type

[**PaymentJson**](PaymentJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment_balance**
> PaymentBalanceJson get_payment_balance(id)

Get payment balance

Gets the balance of a payment

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

api_instance = SubskribeSandboxClient::PaymentsApi.new

id = 'id_example' # String | id of the payment


begin
  #Get payment balance
  result = api_instance.get_payment_balance(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the payment | 

### Return type

[**PaymentBalanceJson**](PaymentBalanceJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment_configuration**
> PaymentConfiguration get_payment_configuration

Get payment configuration

Returns the payment configuration for your tenant

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

api_instance = SubskribeSandboxClient::PaymentsApi.new

begin
  #Get payment configuration
  result = api_instance.get_payment_configuration
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_configuration: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PaymentConfiguration**](PaymentConfiguration.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payments**
> PaymentJsonPaginationResponse get_payments(opts)

Get all payments

Returns all payments for you tenant. The results are paginated. To fetch all take the cursor returned from a call and pass it to a subsequent call.

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

api_instance = SubskribeSandboxClient::PaymentsApi.new

opts = { 
  cursor: 'cursor_example', # String | cursor returned from previous call
  limit: 56 # Integer | number of results per page
}

begin
  #Get all payments
  result = api_instance.get_payments(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | [**String**](.md)| cursor returned from previous call | [optional] 
 **limit** | **Integer**| number of results per page | [optional] 

### Return type

[**PaymentJsonPaginationResponse**](PaymentJsonPaginationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_payment_configuration**
> PaymentConfiguration update_payment_configuration(opts)

Update payment configuration

Updates the payment configuration for your tenant.

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

api_instance = SubskribeSandboxClient::PaymentsApi.new

opts = { 
  body: [SubskribeSandboxClient::Array<String>.new] # Array<String> | Payment types to set. Options can be one or more of the allowable values
}

begin
  #Update payment configuration
  result = api_instance.update_payment_configuration(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling PaymentsApi->update_payment_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Array&lt;String&gt;**| Payment types to set. Options can be one or more of the allowable values | [optional] 

### Return type

[**PaymentConfiguration**](PaymentConfiguration.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **void_payment**
> PaymentJson void_payment(id, opts)

Voids a payment

Voids the specified payment per the specified parameters

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

api_instance = SubskribeSandboxClient::PaymentsApi.new

id = 'id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::VoidPaymentJson.new # VoidPaymentJson | 
}

begin
  #Voids a payment
  result = api_instance.void_payment(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling PaymentsApi->void_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**VoidPaymentJson**](VoidPaymentJson.md)|  | [optional] 

### Return type

[**PaymentJson**](PaymentJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



