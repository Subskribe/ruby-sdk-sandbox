# SubskribeSandboxClient::NotificationsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_target_and_events_subscriptions**](NotificationsApi.md#add_target_and_events_subscriptions) | **POST** /notifications | Add a notification target
[**get_all_notification_subscriptions_for_tenant**](NotificationsApi.md#get_all_notification_subscriptions_for_tenant) | **GET** /notifications | Get all notifications
[**subscribe_existing_notification_target_to_event**](NotificationsApi.md#subscribe_existing_notification_target_to_event) | **POST** /notifications/{notificationId} | Attach an event to a notification
[**unsubscribe_target_or_event**](NotificationsApi.md#unsubscribe_target_or_event) | **POST** /notifications/unsubscribe/{notificationId} | Unsubscribe from an event


# **add_target_and_events_subscriptions**
> NotificationTargetAndSubscriptions add_target_and_events_subscriptions(body)

Add a notification target

Adds a notification target and events according to the specified parameters

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

api_instance = SubskribeSandboxClient::NotificationsApi.new

body = SubskribeSandboxClient::NotificationTargetAndSubscriptions.new # NotificationTargetAndSubscriptions | json representing the notification details


begin
  #Add a notification target
  result = api_instance.add_target_and_events_subscriptions(body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling NotificationsApi->add_target_and_events_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NotificationTargetAndSubscriptions**](NotificationTargetAndSubscriptions.md)| json representing the notification details | 

### Return type

[**NotificationTargetAndSubscriptions**](NotificationTargetAndSubscriptions.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_notification_subscriptions_for_tenant**
> Array&lt;NotificationTargetAndSubscriptions&gt; get_all_notification_subscriptions_for_tenant

Get all notifications

Returns all notification subscriptions for your tenant

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

api_instance = SubskribeSandboxClient::NotificationsApi.new

begin
  #Get all notifications
  result = api_instance.get_all_notification_subscriptions_for_tenant
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling NotificationsApi->get_all_notification_subscriptions_for_tenant: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;NotificationTargetAndSubscriptions&gt;**](NotificationTargetAndSubscriptions.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **subscribe_existing_notification_target_to_event**
> subscribe_existing_notification_target_to_event(notification_id, notification_event_type)

Attach an event to a notification

Attaches a notification event to the target specified by the notification id

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

api_instance = SubskribeSandboxClient::NotificationsApi.new

notification_id = 'notification_id_example' # String | id of the notification target

notification_event_type = 'notification_event_type_example' # String | type of event


begin
  #Attach an event to a notification
  api_instance.subscribe_existing_notification_target_to_event(notification_id, notification_event_type)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling NotificationsApi->subscribe_existing_notification_target_to_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_id** | **String**| id of the notification target | 
 **notification_event_type** | **String**| type of event | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **unsubscribe_target_or_event**
> unsubscribe_target_or_event(notification_id, notification_event_type)

Unsubscribe from an event

Unsubscribes the specified notification target from the specified event

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

api_instance = SubskribeSandboxClient::NotificationsApi.new

notification_id = 'notification_id_example' # String | id of the notification target

notification_event_type = 'notification_event_type_example' # String | type of event


begin
  #Unsubscribe from an event
  api_instance.unsubscribe_target_or_event(notification_id, notification_event_type)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling NotificationsApi->unsubscribe_target_or_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_id** | **String**| id of the notification target | 
 **notification_event_type** | **String**| type of event | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



