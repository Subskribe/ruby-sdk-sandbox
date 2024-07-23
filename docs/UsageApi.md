# SubskribeSandboxClient::UsageApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_and_apply_bulk_payments_csv**](UsageApi.md#add_and_apply_bulk_payments_csv) | **POST** /settlements/addAndApplyPaymentsInBulk/csv | Add and apply bulk payments to invoices CSV
[**add_usage**](UsageApi.md#add_usage) | **POST** /v2/usage | Add usage record
[**get_usage_aggregates_for_subscription**](UsageApi.md#get_usage_aggregates_for_subscription) | **GET** /v2/usage/{subscriptionId} | Get aggregated usage
[**get_usage_arrival_time_checkpoint**](UsageApi.md#get_usage_arrival_time_checkpoint) | **GET** /v2/usage/aggregate/usageArrivalTimeCheckpoint | Get usage arrival checkpoint
[**get_usage_stats_for_all_subscriptions**](UsageApi.md#get_usage_stats_for_all_subscriptions) | **GET** /v2/usage/stats | Get all prepaid drawdown usage stats
[**get_usage_stats_for_all_subscriptions_csv**](UsageApi.md#get_usage_stats_for_all_subscriptions_csv) | **GET** /v2/usage/stats/csv | Get all prepaid drawdown usage stats CSV
[**get_usage_stats_for_subscription**](UsageApi.md#get_usage_stats_for_subscription) | **GET** /v2/usage/stats/{subscriptionId} | Get prepaid drawdown usage stats for subscription
[**get_usage_stats_for_subscription_csv**](UsageApi.md#get_usage_stats_for_subscription_csv) | **GET** /v2/usage/stats/{subscriptionId}/csv | Get prepaid drawdown usage stats CSV
[**get_usage_stats_for_subscription_pdf**](UsageApi.md#get_usage_stats_for_subscription_pdf) | **GET** /v2/usage/stats/{subscriptionId}/pdf | Get prepaid drawdown usage stats PDF
[**perform_on_demand_usage_aggregation**](UsageApi.md#perform_on_demand_usage_aggregation) | **PUT** /v2/usage/aggregate | Aggregate raw usage
[**upload_subscription_usage_csv**](UsageApi.md#upload_subscription_usage_csv) | **POST** /v2/usage/csv | Upload usage record CSV


# **add_and_apply_bulk_payments_csv**
> BulkPaymentUploadResult add_and_apply_bulk_payments_csv(opts)

Add and apply bulk payments to invoices CSV

Bulk upload payments to invoices in CSV file

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

api_instance = SubskribeSandboxClient::UsageApi.new

opts = { 
  file: File.new('/path/to/file.txt') # File | 
}

begin
  #Add and apply bulk payments to invoices CSV
  result = api_instance.add_and_apply_bulk_payments_csv(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->add_and_apply_bulk_payments_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  | [optional] 

### Return type

[**BulkPaymentUploadResult**](BulkPaymentUploadResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **add_usage**
> UsageBatchInsertResult add_usage(opts)

Add usage record

Load usage records into the system

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

api_instance = SubskribeSandboxClient::UsageApi.new

opts = { 
  body: SubskribeSandboxClient::RawUsagesData.new # RawUsagesData | 
}

begin
  #Add usage record
  result = api_instance.add_usage(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->add_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RawUsagesData**](RawUsagesData.md)|  | [optional] 

### Return type

[**UsageBatchInsertResult**](UsageBatchInsertResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_aggregates_for_subscription**
> Array&lt;UsageAggregateOutput&gt; get_usage_aggregates_for_subscription(subscription_id, from, to)

Get aggregated usage

Retrieve the current aggregated usage data for a subscription between 2 instants

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

api_instance = SubskribeSandboxClient::UsageApi.new

subscription_id = 'subscription_id_example' # String | 

from = 789 # Integer | 

to = 789 # Integer | 


begin
  #Get aggregated usage
  result = api_instance.get_usage_aggregates_for_subscription(subscription_id, from, to)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->get_usage_aggregates_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **from** | **Integer**|  | 
 **to** | **Integer**|  | 

### Return type

[**Array&lt;UsageAggregateOutput&gt;**](UsageAggregateOutput.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_usage_arrival_time_checkpoint**
> get_usage_arrival_time_checkpoint

Get usage arrival checkpoint

Retrieve the latest usage record upload to the system as epoch seconds

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

api_instance = SubskribeSandboxClient::UsageApi.new

begin
  #Get usage arrival checkpoint
  api_instance.get_usage_arrival_time_checkpoint
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->get_usage_arrival_time_checkpoint: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_usage_stats_for_all_subscriptions**
> Array&lt;PrepaidStats&gt; get_usage_stats_for_all_subscriptions(from, to)

Get all prepaid drawdown usage stats

Retrieve the current prepaid drawdown statistics for all subscriptions for a time range

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

api_instance = SubskribeSandboxClient::UsageApi.new

from = 789 # Integer | 

to = 789 # Integer | 


begin
  #Get all prepaid drawdown usage stats
  result = api_instance.get_usage_stats_for_all_subscriptions(from, to)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->get_usage_stats_for_all_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Integer**|  | 
 **to** | **Integer**|  | 

### Return type

[**Array&lt;PrepaidStats&gt;**](PrepaidStats.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_usage_stats_for_all_subscriptions_csv**
> get_usage_stats_for_all_subscriptions_csv(from, to)

Get all prepaid drawdown usage stats CSV

Retrieve the current prepaid drawdown statistics for all subscriptions for a time range in CSV format

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

api_instance = SubskribeSandboxClient::UsageApi.new

from = 789 # Integer | 

to = 789 # Integer | 


begin
  #Get all prepaid drawdown usage stats CSV
  api_instance.get_usage_stats_for_all_subscriptions_csv(from, to)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->get_usage_stats_for_all_subscriptions_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Integer**|  | 
 **to** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **get_usage_stats_for_subscription**
> Array&lt;PrepaidStats&gt; get_usage_stats_for_subscription(subscription_id)

Get prepaid drawdown usage stats for subscription

Retrieve the current prepaid drawdown statistics for a subscription

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

api_instance = SubskribeSandboxClient::UsageApi.new

subscription_id = 'subscription_id_example' # String | ID of subscription to retrieve usages stats for


begin
  #Get prepaid drawdown usage stats for subscription
  result = api_instance.get_usage_stats_for_subscription(subscription_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->get_usage_stats_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of subscription to retrieve usages stats for | 

### Return type

[**Array&lt;PrepaidStats&gt;**](PrepaidStats.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_usage_stats_for_subscription_csv**
> get_usage_stats_for_subscription_csv(subscription_id)

Get prepaid drawdown usage stats CSV

Retrieve the current prepaid drawdown statistics for a subscription in CSV format

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

api_instance = SubskribeSandboxClient::UsageApi.new

subscription_id = 'subscription_id_example' # String | 


begin
  #Get prepaid drawdown usage stats CSV
  api_instance.get_usage_stats_for_subscription_csv(subscription_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->get_usage_stats_for_subscription_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **get_usage_stats_for_subscription_pdf**
> get_usage_stats_for_subscription_pdf(subscription_id)

Get prepaid drawdown usage stats PDF

Retrieve the current prepaid drawdown statistics for a subscription in PDF format

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

api_instance = SubskribeSandboxClient::UsageApi.new

subscription_id = 'subscription_id_example' # String | 


begin
  #Get prepaid drawdown usage stats PDF
  api_instance.get_usage_stats_for_subscription_pdf(subscription_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->get_usage_stats_for_subscription_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **perform_on_demand_usage_aggregation**
> perform_on_demand_usage_aggregation

Aggregate raw usage

Trigger the process to aggregate any remaining raw usage records

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

api_instance = SubskribeSandboxClient::UsageApi.new

begin
  #Aggregate raw usage
  api_instance.perform_on_demand_usage_aggregation
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->perform_on_demand_usage_aggregation: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload_subscription_usage_csv**
> UsageBatchInsertResult upload_subscription_usage_csv(opts)

Upload usage record CSV

Upload usage records in CSV file. Each row of the file represents a single usage record

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

api_instance = SubskribeSandboxClient::UsageApi.new

opts = { 
  file: File.new('/path/to/file.txt') # File | 
}

begin
  #Upload usage record CSV
  result = api_instance.upload_subscription_usage_csv(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsageApi->upload_subscription_usage_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  | [optional] 

### Return type

[**UsageBatchInsertResult**](UsageBatchInsertResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



