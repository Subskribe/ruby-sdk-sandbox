# SubskribeDevClient::EntityApi

All URIs are relative to *https://api.dev2.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload_logo**](EntityApi.md#upload_logo) | **PUT** /entities/logo/{entityId} | Update entity logo


# **upload_logo**
> upload_logo(entity_id, opts)

Update entity logo

Updates the logo used in external facing communication such as order forms and invoices

### Example
```ruby
# load the gem
require 'subskribe_dev'
# setup authorization
SubskribeDevClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = SubskribeDevClient::EntityApi.new

entity_id = 'entity_id_example' # String | 

opts = { 
  file: File.new('/path/to/file.txt') # File | 
}

begin
  #Update entity logo
  api_instance.upload_logo(entity_id, opts)
rescue SubskribeDevClient::ApiError => e
  puts "Exception when calling EntityApi->upload_logo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **String**|  | 
 **file** | **File**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



