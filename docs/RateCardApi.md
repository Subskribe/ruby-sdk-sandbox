# SubskribeSandboxClient::RateCardApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_price_attributes_csv**](RateCardApi.md#get_price_attributes_csv) | **GET** /ratecards/attributes/csv | Fetch the price attributes defined in the system in CSV format


# **get_price_attributes_csv**
> get_price_attributes_csv

Fetch the price attributes defined in the system in CSV format

Get all the price attributes in the system in CSV format one per row

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

api_instance = SubskribeSandboxClient::RateCardApi.new

begin
  #Fetch the price attributes defined in the system in CSV format
  api_instance.get_price_attributes_csv
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling RateCardApi->get_price_attributes_csv: #{e}"
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



