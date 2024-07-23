# SubskribeSandboxClient::ERPApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**process_delete_tasks**](ERPApi.md#process_delete_tasks) | **POST** /erp/processDeleteTasks/{accountingPeriodId} | Trigger ERP journal entry deletion task
[**process_sync_tasks**](ERPApi.md#process_sync_tasks) | **POST** /erp/processSyncTasks/{accountingPeriodId} | Trigger ERP journal entry sync task
[**sync_credit_memo_to_erp**](ERPApi.md#sync_credit_memo_to_erp) | **POST** /erp/syncCreditMemo/{creditMemoNumber} | Trigger ERP credit memo sync task
[**sync_invoice_to_erp**](ERPApi.md#sync_invoice_to_erp) | **POST** /erp/syncInvoice/{invoiceId} | Trigger ERP invoice sync task
[**sync_void_invoice_to_erp**](ERPApi.md#sync_void_invoice_to_erp) | **POST** /erp/syncVoidInvoice/{invoiceNumber} | Trigger ERP void invoice sync task


# **process_delete_tasks**
> process_delete_tasks(accounting_period_id)

Trigger ERP journal entry deletion task

Trigger ERP journal entry deletion task for the given accounting period id

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

api_instance = SubskribeSandboxClient::ERPApi.new

accounting_period_id = 'accounting_period_id_example' # String | 


begin
  #Trigger ERP journal entry deletion task
  api_instance.process_delete_tasks(accounting_period_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ERPApi->process_delete_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accounting_period_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **process_sync_tasks**
> process_sync_tasks(accounting_period_id)

Trigger ERP journal entry sync task

Trigger ERP journal entry sync task for given accounting period id

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

api_instance = SubskribeSandboxClient::ERPApi.new

accounting_period_id = 'accounting_period_id_example' # String | 


begin
  #Trigger ERP journal entry sync task
  api_instance.process_sync_tasks(accounting_period_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ERPApi->process_sync_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accounting_period_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sync_credit_memo_to_erp**
> sync_credit_memo_to_erp(credit_memo_number)

Trigger ERP credit memo sync task

Trigger ERP credit memo sync task for the given credit memo number

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

api_instance = SubskribeSandboxClient::ERPApi.new

credit_memo_number = 'credit_memo_number_example' # String | 


begin
  #Trigger ERP credit memo sync task
  api_instance.sync_credit_memo_to_erp(credit_memo_number)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ERPApi->sync_credit_memo_to_erp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_memo_number** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sync_invoice_to_erp**
> sync_invoice_to_erp(invoice_id)

Trigger ERP invoice sync task

Trigger ERP invoice sync task for the given invoice id

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

api_instance = SubskribeSandboxClient::ERPApi.new

invoice_id = 'invoice_id_example' # String | 


begin
  #Trigger ERP invoice sync task
  api_instance.sync_invoice_to_erp(invoice_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ERPApi->sync_invoice_to_erp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sync_void_invoice_to_erp**
> sync_void_invoice_to_erp(invoice_number)

Trigger ERP void invoice sync task

Trigger ERP void invoice sync task for the given invoice number

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

api_instance = SubskribeSandboxClient::ERPApi.new

invoice_number = 'invoice_number_example' # String | 


begin
  #Trigger ERP void invoice sync task
  api_instance.sync_void_invoice_to_erp(invoice_number)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ERPApi->sync_void_invoice_to_erp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_number** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



