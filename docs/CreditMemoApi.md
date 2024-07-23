# SubskribeSandboxClient::CreditMemoApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convert_negative_draft_invoice**](CreditMemoApi.md#convert_negative_draft_invoice) | **PUT** /creditmemos/convert/{invoiceNumber} | Convert invoice to credit memo
[**create_credit_memo_document**](CreditMemoApi.md#create_credit_memo_document) | **POST** /creditmemos/{creditMemoNumber}/pdf | Create a credit memo document
[**create_standalone_credit_memo**](CreditMemoApi.md#create_standalone_credit_memo) | **POST** /creditmemos | Create a standalone credit memo
[**delete_credit_memo**](CreditMemoApi.md#delete_credit_memo) | **DELETE** /creditmemos/{creditMemoNumber} | Delete a credit memo
[**get_credit_balance**](CreditMemoApi.md#get_credit_balance) | **GET** /creditmemos/{creditMemoNumber}/balance | Get credit memo balance
[**get_credit_memo**](CreditMemoApi.md#get_credit_memo) | **GET** /creditmemos/{creditMemoNumber} | Get credit memo details
[**get_credit_memo_configuration**](CreditMemoApi.md#get_credit_memo_configuration) | **GET** /creditmemos/configuration | Get credit memo configuration for the tenant
[**get_credit_memo_document_pdf**](CreditMemoApi.md#get_credit_memo_document_pdf) | **GET** /creditmemos/{creditMemoNumber}/pdf | Download credit memo pdf
[**get_credit_memo_for_account**](CreditMemoApi.md#get_credit_memo_for_account) | **GET** /creditmemos | Get credit memos for an account
[**post_credit_memo**](CreditMemoApi.md#post_credit_memo) | **POST** /creditmemos/{creditMemoNumber}/post | Post a credit memo
[**update_credit_memo_configuration**](CreditMemoApi.md#update_credit_memo_configuration) | **POST** /creditmemos/configuration | Update credit memo configuration
[**update_draft_credit_memo**](CreditMemoApi.md#update_draft_credit_memo) | **PUT** /creditmemos/{creditMemoNumber} | Update a credit memo


# **convert_negative_draft_invoice**
> CreditMemoJson convert_negative_draft_invoice(invoice_number)

Convert invoice to credit memo

Converts the specified invoice to a credit memo. Note the invoice must be in DRAFT status and have a negative balance.

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

invoice_number = 'invoice_number_example' # String | number of the invoice


begin
  #Convert invoice to credit memo
  result = api_instance.convert_negative_draft_invoice(invoice_number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->convert_negative_draft_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_number** | **String**| number of the invoice | 

### Return type

[**CreditMemoJson**](CreditMemoJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_credit_memo_document**
> create_credit_memo_document(credit_memo_number)

Create a credit memo document

Creates a pdf version of the credit memo

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

credit_memo_number = 'credit_memo_number_example' # String | number of the credit memo


begin
  #Create a credit memo document
  api_instance.create_credit_memo_document(credit_memo_number)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->create_credit_memo_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_memo_number** | **String**| number of the credit memo | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_standalone_credit_memo**
> String create_standalone_credit_memo(opts)

Create a standalone credit memo

Creates a standalone credit memo for a specified account. On success the number of the new memo is returned

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

opts = { 
  body: SubskribeSandboxClient::StandaloneCreditMemoRequest.new # StandaloneCreditMemoRequest | json representing the credit memo details
}

begin
  #Create a standalone credit memo
  result = api_instance.create_standalone_credit_memo(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->create_standalone_credit_memo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**StandaloneCreditMemoRequest**](StandaloneCreditMemoRequest.md)| json representing the credit memo details | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_credit_memo**
> CreditMemoJson delete_credit_memo(credit_memo_number)

Delete a credit memo

Deletes the specified credit memo. The credit memo must be in DRAFT status

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

credit_memo_number = 'credit_memo_number_example' # String | number of the credit memo


begin
  #Delete a credit memo
  result = api_instance.delete_credit_memo(credit_memo_number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->delete_credit_memo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_memo_number** | **String**| number of the credit memo | 

### Return type

[**CreditMemoJson**](CreditMemoJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_credit_balance**
> CreditMemoBalanceJson get_credit_balance(credit_memo_number)

Get credit memo balance

Gets the balance of the specified credit memo

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

credit_memo_number = 'credit_memo_number_example' # String | number of the credit memo


begin
  #Get credit memo balance
  result = api_instance.get_credit_balance(credit_memo_number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->get_credit_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_memo_number** | **String**| number of the credit memo | 

### Return type

[**CreditMemoBalanceJson**](CreditMemoBalanceJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_credit_memo**
> CreditMemoJson get_credit_memo(credit_memo_number)

Get credit memo details

Returns the details of the specified credit memo

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

credit_memo_number = 'credit_memo_number_example' # String | number of the credit memo


begin
  #Get credit memo details
  result = api_instance.get_credit_memo(credit_memo_number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->get_credit_memo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_memo_number** | **String**| number of the credit memo | 

### Return type

[**CreditMemoJson**](CreditMemoJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_credit_memo_configuration**
> TenantCreditMemoConfigurationJson get_credit_memo_configuration

Get credit memo configuration for the tenant

Returns the credit memo configuration for your tenant

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

begin
  #Get credit memo configuration for the tenant
  result = api_instance.get_credit_memo_configuration
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->get_credit_memo_configuration: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantCreditMemoConfigurationJson**](TenantCreditMemoConfigurationJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_credit_memo_document_pdf**
> get_credit_memo_document_pdf(credit_memo_number)

Download credit memo pdf

Downloads the pdf version of the credit memo. Note the credit memo must already have been created. If the credit memo is still in the process of being created, HTTP 202 is returned.

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

credit_memo_number = 'credit_memo_number_example' # String | number of the credit memo


begin
  #Download credit memo pdf
  api_instance.get_credit_memo_document_pdf(credit_memo_number)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->get_credit_memo_document_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_memo_number** | **String**| number of the credit memo | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_credit_memo_for_account**
> CreditMemoPaginationResponseJson get_credit_memo_for_account(opts)

Get credit memos for an account

Returns a paginated list of credit memos for the specified account. Pass the cursor returned to subsequent calls to retrieve all data.

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

opts = { 
  account_id: 'account_id_example', # String | id of the account
  cursor: 'cursor_example', # String | cursor used to move the pages
  limit: 56 # Integer | number of results per page
}

begin
  #Get credit memos for an account
  result = api_instance.get_credit_memo_for_account(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->get_credit_memo_for_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| id of the account | [optional] 
 **cursor** | [**String**](.md)| cursor used to move the pages | [optional] 
 **limit** | **Integer**| number of results per page | [optional] 

### Return type

[**CreditMemoPaginationResponseJson**](CreditMemoPaginationResponseJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_credit_memo**
> CreditMemoJson post_credit_memo(credit_memo_number)

Post a credit memo

Sets the status of the specified credit memo to POSTED

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

credit_memo_number = 'credit_memo_number_example' # String | number of the credit memo


begin
  #Post a credit memo
  result = api_instance.post_credit_memo(credit_memo_number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->post_credit_memo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_memo_number** | **String**| number of the credit memo | 

### Return type

[**CreditMemoJson**](CreditMemoJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_credit_memo_configuration**
> TenantCreditMemoConfigurationJson update_credit_memo_configuration(opts)

Update credit memo configuration

Updates the credit memo configuration for you tenant.

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

opts = { 
  body: SubskribeSandboxClient::TenantCreditMemoConfigurationJson.new # TenantCreditMemoConfigurationJson | json representing the configuration
}

begin
  #Update credit memo configuration
  result = api_instance.update_credit_memo_configuration(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->update_credit_memo_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TenantCreditMemoConfigurationJson**](TenantCreditMemoConfigurationJson.md)| json representing the configuration | [optional] 

### Return type

[**TenantCreditMemoConfigurationJson**](TenantCreditMemoConfigurationJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_draft_credit_memo**
> CreditMemoJson update_draft_credit_memo(credit_memo_number, opts)

Update a credit memo

Updates the details of a credit memo in DRAFT status

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

api_instance = SubskribeSandboxClient::CreditMemoApi.new

credit_memo_number = 'credit_memo_number_example' # String | credit memo number

opts = { 
  body: SubskribeSandboxClient::StandaloneCreditMemoRequest.new # StandaloneCreditMemoRequest | json representation of the details to be updated
}

begin
  #Update a credit memo
  result = api_instance.update_draft_credit_memo(credit_memo_number, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CreditMemoApi->update_draft_credit_memo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_memo_number** | **String**| credit memo number | 
 **body** | [**StandaloneCreditMemoRequest**](StandaloneCreditMemoRequest.md)| json representation of the details to be updated | [optional] 

### Return type

[**CreditMemoJson**](CreditMemoJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



