# SubskribeSandboxClient::SubscriptionsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_subscription**](SubscriptionsApi.md#delete_subscription) | **DELETE** /subscriptions/{id}/{version} | Delete subscription
[**get_subscription_billing_periods**](SubscriptionsApi.md#get_subscription_billing_periods) | **GET** /subscriptions/{id}/billingPeriods | Get billing periods
[**get_subscription_by_id**](SubscriptionsApi.md#get_subscription_by_id) | **GET** /subscriptions/{id} | Get subscription details
[**get_subscription_metrics**](SubscriptionsApi.md#get_subscription_metrics) | **GET** /subscriptions/{id}/metrics | Get subscription metrics
[**get_subscriptions**](SubscriptionsApi.md#get_subscriptions) | **GET** /subscriptions | Get paginated subscriptions
[**revert_subscription**](SubscriptionsApi.md#revert_subscription) | **PUT** /subscriptions/{id}/{version}/revert | Revert subscription
[**subscription_modifiable**](SubscriptionsApi.md#subscription_modifiable) | **GET** /subscriptions/{id}/modifiable | Subscription can be modified
[**subscription_reversible**](SubscriptionsApi.md#subscription_reversible) | **GET** /subscriptions/{id}/reversible | Subscription can be reverted
[**update_renewal_opportunity**](SubscriptionsApi.md#update_renewal_opportunity) | **POST** /subscriptions/{id}/renewalOpportunity | Link renewal opportunity to subscription
[**update_subscription**](SubscriptionsApi.md#update_subscription) | **PUT** /subscriptions/{id} | Update subscription details


# **delete_subscription**
> delete_subscription(id, version)

Delete subscription

Deletes the subscription for given subscription Id if invoices have not been generated and revenue has not been recognized

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

id = 'id_example' # String | subscription id

version = 56 # Integer | subscription version


begin
  #Delete subscription
  api_instance.delete_subscription(id, version)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->delete_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| subscription id | 
 **version** | **Integer**| subscription version | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_billing_periods**
> Array&lt;Integer&gt; get_subscription_billing_periods(id)

Get billing periods

Gets the billing periods for the specified subscription.

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

id = 'id_example' # String | subscription id


begin
  #Get billing periods
  result = api_instance.get_subscription_billing_periods(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription_billing_periods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| subscription id | 

### Return type

**Array&lt;Integer&gt;**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_by_id**
> SubscriptionJson get_subscription_by_id(id)

Get subscription details

Gets the details of the specified subscription.

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

id = 'id_example' # String | subscription id


begin
  #Get subscription details
  result = api_instance.get_subscription_by_id(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| subscription id | 

### Return type

[**SubscriptionJson**](SubscriptionJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_metrics**
> MetricsJson get_subscription_metrics(id, opts)

Get subscription metrics

Returns the metrics associated with the specified subscription. Metrics include ACV, ARR, etc.

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

id = 'id_example' # String | id of the subscription

opts = { 
  target_date: 789 # Integer | As of date for the metrics. If omitted defaults to now.
}

begin
  #Get subscription metrics
  result = api_instance.get_subscription_metrics(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the subscription | 
 **target_date** | **Integer**| As of date for the metrics. If omitted defaults to now. | [optional] 

### Return type

[**MetricsJson**](MetricsJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscriptions**
> PaginatedSubscriptionsResponse get_subscriptions(opts)

Get paginated subscriptions

returns all Subscriptions in the system in a paginated fashion

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

opts = { 
  limit: 56, # Integer | number of items per page
  page_token: 'page_token_example', # String | pass this to subsequent calls
  account_id: 'account_id_example' # String | optionally pass in account Id, only subscriptions for this account will will returned
}

begin
  #Get paginated subscriptions
  result = api_instance.get_subscriptions(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| number of items per page | [optional] 
 **page_token** | **String**| pass this to subsequent calls | [optional] 
 **account_id** | **String**| optionally pass in account Id, only subscriptions for this account will will returned | [optional] 

### Return type

[**PaginatedSubscriptionsResponse**](PaginatedSubscriptionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **revert_subscription**
> revert_subscription(id, version)

Revert subscription

Reverts the subscription for given subscription Id and version to it's previous version. Operation is allowed only if invoices have not been generated and revenue has not been recognized

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

id = 'id_example' # String | subscription id

version = 56 # Integer | subscription version


begin
  #Revert subscription
  api_instance.revert_subscription(id, version)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->revert_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| subscription id | 
 **version** | **Integer**| subscription version | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **subscription_modifiable**
> subscription_modifiable(id)

Subscription can be modified

Returns true if subscription can be deleted.

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

id = 'id_example' # String | subscription id


begin
  #Subscription can be modified
  api_instance.subscription_modifiable(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->subscription_modifiable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| subscription id | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **subscription_reversible**
> subscription_reversible(id)

Subscription can be reverted

Returns true if subscription can be reverted to a prior version.

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

id = 'id_example' # String | subscription id


begin
  #Subscription can be reverted
  api_instance.subscription_reversible(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->subscription_reversible: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| subscription id | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_renewal_opportunity**
> update_renewal_opportunity(id, renewal_opportunity_crm_id)

Link renewal opportunity to subscription

Update renewal opportunity CRM id on subscription

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

id = 'id_example' # String | subscription id

renewal_opportunity_crm_id = 'renewal_opportunity_crm_id_example' # String | renewal opportunity CRM id


begin
  #Link renewal opportunity to subscription
  api_instance.update_renewal_opportunity(id, renewal_opportunity_crm_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->update_renewal_opportunity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| subscription id | 
 **renewal_opportunity_crm_id** | **String**| renewal opportunity CRM id | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_subscription**
> update_subscription(id, body)

Update subscription details

Updates the details of the specified subscription.

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

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

id = 'id_example' # String | subscription id

body = SubskribeSandboxClient::SubscriptionUpdateJson.new # SubscriptionUpdateJson | subscription details in json


begin
  #Update subscription details
  api_instance.update_subscription(id, body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->update_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| subscription id | 
 **body** | [**SubscriptionUpdateJson**](SubscriptionUpdateJson.md)| subscription details in json | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



