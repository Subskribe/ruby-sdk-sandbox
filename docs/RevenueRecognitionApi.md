# SubskribeSandboxClient::RevenueRecognitionApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_recognition_rule**](RevenueRecognitionApi.md#add_recognition_rule) | **POST** /revrec/rules | Create a revenue recognition rule
[**create_recognition_event**](RevenueRecognitionApi.md#create_recognition_event) | **POST** /revrec/events | Create a revenue recognition event
[**delete_rule**](RevenueRecognitionApi.md#delete_rule) | **DELETE** /revrec/rules/{ruleId} | Delete a recognition rule
[**get_recognition_events_by_subscription_id_charge_id**](RevenueRecognitionApi.md#get_recognition_events_by_subscription_id_charge_id) | **GET** /revrec/events | Get revenue recognition events
[**get_recognition_rule_by_id**](RevenueRecognitionApi.md#get_recognition_rule_by_id) | **GET** /revrec/rules/{id} | Get revenue recognition rule
[**get_recognition_rule_by_id1**](RevenueRecognitionApi.md#get_recognition_rule_by_id1) | **GET** /revrec/rules | Get revenue recognition rules
[**get_revenue_waterfall**](RevenueRecognitionApi.md#get_revenue_waterfall) | **GET** /revrec/waterfall | Download waterfall report
[**get_revenue_waterfall_report_v2**](RevenueRecognitionApi.md#get_revenue_waterfall_report_v2) | **GET** /revrec/waterfall/v2 | Download waterfall report
[**upload_completion_events**](RevenueRecognitionApi.md#upload_completion_events) | **POST** /revrec/events/upload | Upload revenue events


# **add_recognition_rule**
> add_recognition_rule(body)

Create a revenue recognition rule

Creates a revenue recognition rule.

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

api_instance = SubskribeSandboxClient::RevenueRecognitionApi.new

body = SubskribeSandboxClient::RecognitionRule.new # RecognitionRule | recognition rule details


begin
  #Create a revenue recognition rule
  api_instance.add_recognition_rule(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RevenueRecognitionApi->add_recognition_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RecognitionRule**](RecognitionRule.md)| recognition rule details | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_recognition_event**
> create_recognition_event(body)

Create a revenue recognition event

Creates a revenue recognition event, only if it is different from the previous event for same subscription and charge.

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

api_instance = SubskribeSandboxClient::RevenueRecognitionApi.new

body = SubskribeSandboxClient::RecognitionEventCompletion.new # RecognitionEventCompletion | recognition event details


begin
  #Create a revenue recognition event
  api_instance.create_recognition_event(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RevenueRecognitionApi->create_recognition_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RecognitionEventCompletion**](RecognitionEventCompletion.md)| recognition event details | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_rule**
> RecognitionRule delete_rule(rule_id)

Delete a recognition rule

Deletes a recognition rule. Note you can't delete a recognition rule that's in use.

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

api_instance = SubskribeSandboxClient::RevenueRecognitionApi.new

rule_id = 'rule_id_example' # String | id of the recognition rule


begin
  #Delete a recognition rule
  result = api_instance.delete_rule(rule_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RevenueRecognitionApi->delete_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_id** | **String**| id of the recognition rule | 

### Return type

[**RecognitionRule**](RecognitionRule.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_recognition_events_by_subscription_id_charge_id**
> Array&lt;RecognitionEventCompletion&gt; get_recognition_events_by_subscription_id_charge_id(subscription_id, charge_id, opts)

Get revenue recognition events

Gets revenue recognition events for the specified subscription and charge.

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

api_instance = SubskribeSandboxClient::RevenueRecognitionApi.new

subscription_id = 'subscription_id_example' # String | id of the subscription

charge_id = 'charge_id_example' # String | id of the charge

opts = { 
  accounting_period_id: 'accounting_period_id_example' # String | id of the accounting period to limit events to
}

begin
  #Get revenue recognition events
  result = api_instance.get_recognition_events_by_subscription_id_charge_id(subscription_id, charge_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RevenueRecognitionApi->get_recognition_events_by_subscription_id_charge_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| id of the subscription | 
 **charge_id** | **String**| id of the charge | 
 **accounting_period_id** | **String**| id of the accounting period to limit events to | [optional] 

### Return type

[**Array&lt;RecognitionEventCompletion&gt;**](RecognitionEventCompletion.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_recognition_rule_by_id**
> get_recognition_rule_by_id(id)

Get revenue recognition rule

Get a revenue recognition rule using id.

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

api_instance = SubskribeSandboxClient::RevenueRecognitionApi.new

id = 'id_example' # String | id of the recognition rule


begin
  #Get revenue recognition rule
  api_instance.get_recognition_rule_by_id(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RevenueRecognitionApi->get_recognition_rule_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the recognition rule | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_recognition_rule_by_id1**
> get_recognition_rule_by_id1

Get revenue recognition rules

Get revenue recognition rules.

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

api_instance = SubskribeSandboxClient::RevenueRecognitionApi.new

begin
  #Get revenue recognition rules
  api_instance.get_recognition_rule_by_id1
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RevenueRecognitionApi->get_recognition_rule_by_id1: #{e}"
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



# **get_revenue_waterfall**
> get_revenue_waterfall(opts)

Download waterfall report

Downloads a revenue waterfall report in csv format.

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

api_instance = SubskribeSandboxClient::RevenueRecognitionApi.new

opts = { 
  start_date: 789, # Integer | report start date as unix timestamp
  end_date: 789 # Integer | report end date as unix timestamp
}

begin
  #Download waterfall report
  api_instance.get_revenue_waterfall(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RevenueRecognitionApi->get_revenue_waterfall: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| report start date as unix timestamp | [optional] 
 **end_date** | **Integer**| report end date as unix timestamp | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **get_revenue_waterfall_report_v2**
> get_revenue_waterfall_report_v2

Download waterfall report

Downloads a revenue waterfall report in csv format.

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

api_instance = SubskribeSandboxClient::RevenueRecognitionApi.new

begin
  #Download waterfall report
  api_instance.get_revenue_waterfall_report_v2
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RevenueRecognitionApi->get_revenue_waterfall_report_v2: #{e}"
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
 - **Accept**: application/octet-stream, application/json



# **upload_completion_events**
> upload_completion_events(opts)

Upload revenue events

Uploads revenue events from a csv file. The format of the file is Subscription.Id,Charge.Id,Alias.Id,RevrecEvent.PercentComplete Percent complete should be a decimal.

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

api_instance = SubskribeSandboxClient::RevenueRecognitionApi.new

opts = { 
  file: File.new('/path/to/file.txt') # File | 
}

begin
  #Upload revenue events
  api_instance.upload_completion_events(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RevenueRecognitionApi->upload_completion_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



