# SubskribeSandboxClient::SalesRoomApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_order_document2**](SalesRoomApi.md#get_order_document2) | **GET** /salesroom/{linkId}/pdf | Fetch order form PDF for a Sales Room


# **get_order_document2**
> get_order_document2(link_id)

Fetch order form PDF for a Sales Room

Downloads the order form PDF for the specified Sales Room.

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

api_instance = SubskribeSandboxClient::SalesRoomApi.new

link_id = 'link_id_example' # String | Link id for the sales room


begin
  #Fetch order form PDF for a Sales Room
  api_instance.get_order_document2(link_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SalesRoomApi->get_order_document2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link_id** | **String**| Link id for the sales room | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



