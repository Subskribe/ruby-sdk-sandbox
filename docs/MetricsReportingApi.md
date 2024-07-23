# SubskribeSandboxClient::MetricsReportingApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_external_arr_metrics**](MetricsReportingApi.md#add_external_arr_metrics) | **POST** /metricsReporting/externalArrMetrics | submit request to generate external arr metrics
[**get_external_arr_metrics**](MetricsReportingApi.md#get_external_arr_metrics) | **GET** /metricsReporting/externalArrMetrics/{id} | gets external arr metrics request for the provided id
[**get_external_arr_metrics1**](MetricsReportingApi.md#get_external_arr_metrics1) | **GET** /metricsReporting/externalArrMetrics | gets external arr metrics requests submitted
[**populate_arr_metrics_for_subscription**](MetricsReportingApi.md#populate_arr_metrics_for_subscription) | **PUT** /metricsReporting/populateArrMetrics/subscriptions/{subscriptionId} | submit request to generate/regenerate arr metrics for a subscription


# **add_external_arr_metrics**
> add_external_arr_metrics(opts)

submit request to generate external arr metrics

returns the request with its captured id. Arr metrics will be generated as a backend job

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

api_instance = SubskribeSandboxClient::MetricsReportingApi.new

opts = { 
  body: SubskribeSandboxClient::ExternalArrScheduleJson.new # ExternalArrScheduleJson | 
}

begin
  #submit request to generate external arr metrics
  api_instance.add_external_arr_metrics(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling MetricsReportingApi->add_external_arr_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ExternalArrScheduleJson**](ExternalArrScheduleJson.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_external_arr_metrics**
> get_external_arr_metrics(id)

gets external arr metrics request for the provided id

returns the external arr metrics request for the provided id

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

api_instance = SubskribeSandboxClient::MetricsReportingApi.new

id = 'id_example' # String | id of the externalArrMetrics request


begin
  #gets external arr metrics request for the provided id
  api_instance.get_external_arr_metrics(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling MetricsReportingApi->get_external_arr_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the externalArrMetrics request | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_external_arr_metrics1**
> get_external_arr_metrics1(opts)

gets external arr metrics requests submitted

returns the paginated list of external arr metrics requests

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

api_instance = SubskribeSandboxClient::MetricsReportingApi.new

opts = { 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  #gets external arr metrics requests submitted
  api_instance.get_external_arr_metrics1(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling MetricsReportingApi->get_external_arr_metrics1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | [**String**](.md)|  | [optional] 
 **limit** | **Integer**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **populate_arr_metrics_for_subscription**
> populate_arr_metrics_for_subscription(subscription_id)

submit request to generate/regenerate arr metrics for a subscription

returns 200 if the result is successfully submitted to a background task

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

api_instance = SubskribeSandboxClient::MetricsReportingApi.new

subscription_id = 'subscription_id_example' # String | id of the subscription


begin
  #submit request to generate/regenerate arr metrics for a subscription
  api_instance.populate_arr_metrics_for_subscription(subscription_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling MetricsReportingApi->populate_arr_metrics_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| id of the subscription | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



