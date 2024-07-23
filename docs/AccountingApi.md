# SubskribeSandboxClient::AccountingApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_accounting_events**](AccountingApi.md#get_accounting_events) | **GET** /accounting/journalEntry/events | Get accounting events for the specified dates
[**get_journal_entries**](AccountingApi.md#get_journal_entries) | **GET** /accounting/journalEntry | Return Journal Entries for period
[**specify_current_accounting_period**](AccountingApi.md#specify_current_accounting_period) | **POST** /accountingPeriods | Specify the current accounting period


# **get_accounting_events**
> AccountingEventPaginatedResponse get_accounting_events(from, to, opts)

Get accounting events for the specified dates

Returns all accounting related events between the from and to dates. Since there can be a large number of these, the results are paginated. To retrieve subsequent pages of events, pass in the pageToken returned from the prior call.

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

api_instance = SubskribeSandboxClient::AccountingApi.new

from = 789 # Integer | start date in seconds since Epoch(GMT)

to = 789 # Integer | end date in seconds since Epoch(GMT)

opts = { 
  limit: 56, # Integer | number of items per page
  page_token: 'page_token_example' # String | pass this to subsequent calls
}

begin
  #Get accounting events for the specified dates
  result = api_instance.get_accounting_events(from, to, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountingApi->get_accounting_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Integer**| start date in seconds since Epoch(GMT) | 
 **to** | **Integer**| end date in seconds since Epoch(GMT) | 
 **limit** | **Integer**| number of items per page | [optional] 
 **page_token** | **String**| pass this to subsequent calls | [optional] 

### Return type

[**AccountingEventPaginatedResponse**](AccountingEventPaginatedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_journal_entries**
> get_journal_entries(accounting_period_id)

Return Journal Entries for period

Returns all Journal Entries for the specified accounting period as text/csv

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

api_instance = SubskribeSandboxClient::AccountingApi.new

accounting_period_id = 'accounting_period_id_example' # String | Id of the period


begin
  #Return Journal Entries for period
  api_instance.get_journal_entries(accounting_period_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountingApi->get_journal_entries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accounting_period_id** | **String**| Id of the period | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream, application/json



# **specify_current_accounting_period**
> AccountingPeriod specify_current_accounting_period(opts)

Specify the current accounting period

Specify the start date of and open an accounting period, making it current

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

api_instance = SubskribeSandboxClient::AccountingApi.new

opts = { 
  start_date: 789 # Integer | Start date of new period in seconds since Epoch (GMT)
}

begin
  #Specify the current accounting period
  result = api_instance.specify_current_accounting_period(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountingApi->specify_current_accounting_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| Start date of new period in seconds since Epoch (GMT) | [optional] 

### Return type

[**AccountingPeriod**](AccountingPeriod.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



