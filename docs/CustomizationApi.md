# SubskribeSandboxClient::CustomizationApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compile_order_creation_customization_zeppa_script**](CustomizationApi.md#compile_order_creation_customization_zeppa_script) | **PUT** /beta/customization/orderCreationCustomization/compile | Compile and Verify a order creation customization for correctness
[**compile_plan_selection_customization_zeppa_script**](CustomizationApi.md#compile_plan_selection_customization_zeppa_script) | **PUT** /beta/customization/planSelectionCustomization/compile | Compile and Verify a plan selection customization for correctness
[**test_order_creation_customization_zeppa_script**](CustomizationApi.md#test_order_creation_customization_zeppa_script) | **PUT** /beta/customization/orderCreationCustomization/test | Test a order creation customization zeppa script
[**test_plan_selection_customization_zeppa_script**](CustomizationApi.md#test_plan_selection_customization_zeppa_script) | **PUT** /beta/customization/planSelectionCustomization/test | Test a plan selection customization zeppa script


# **compile_order_creation_customization_zeppa_script**
> compile_order_creation_customization_zeppa_script(order_id, body, opts)

Compile and Verify a order creation customization for correctness

if this endpoint returns OK it means the plan order customization zeppa script has successfully compiled

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

api_instance = SubskribeSandboxClient::CustomizationApi.new

order_id = 'order_id_example' # String | order id against which the compilation should happen

body = 'body_example' # String | the zeppa script that needs to be compiled

opts = { 
  user_id: 'user_id_example' # String | order id against which the compilation should happen
}

begin
  #Compile and Verify a order creation customization for correctness
  api_instance.compile_order_creation_customization_zeppa_script(order_id, body, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomizationApi->compile_order_creation_customization_zeppa_script: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| order id against which the compilation should happen | 
 **body** | **String**| the zeppa script that needs to be compiled | 
 **user_id** | **String**| order id against which the compilation should happen | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **compile_plan_selection_customization_zeppa_script**
> compile_plan_selection_customization_zeppa_script(account_id, body)

Compile and Verify a plan selection customization for correctness

if this endpoint returns OK it means the plan selection customization zeppa script has successfully compiled

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

api_instance = SubskribeSandboxClient::CustomizationApi.new

account_id = 'account_id_example' # String | account id against which the compilation should happen

body = 'body_example' # String | the zeppa script that needs to be compiled


begin
  #Compile and Verify a plan selection customization for correctness
  api_instance.compile_plan_selection_customization_zeppa_script(account_id, body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomizationApi->compile_plan_selection_customization_zeppa_script: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| account id against which the compilation should happen | 
 **body** | **String**| the zeppa script that needs to be compiled | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **test_order_creation_customization_zeppa_script**
> test_order_creation_customization_zeppa_script(order_id, body, opts)

Test a order creation customization zeppa script

runs the provided zeppa script and returns a list of Rule actions that were applicable after zeppa script ran

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

api_instance = SubskribeSandboxClient::CustomizationApi.new

order_id = 'order_id_example' # String | order id against which the test needs to happen

body = 'body_example' # String | the zeppa script that needs to be tested

opts = { 
  user_id: 'user_id_example' # String | the user id against which this test needs to happen, the user should be part of the tenancy
}

begin
  #Test a order creation customization zeppa script
  api_instance.test_order_creation_customization_zeppa_script(order_id, body, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomizationApi->test_order_creation_customization_zeppa_script: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| order id against which the test needs to happen | 
 **body** | **String**| the zeppa script that needs to be tested | 
 **user_id** | **String**| the user id against which this test needs to happen, the user should be part of the tenancy | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **test_plan_selection_customization_zeppa_script**
> test_plan_selection_customization_zeppa_script(account_id, body)

Test a plan selection customization zeppa script

runs the provided zeppa script and returns a list of Rule actions that were applicable after zeppa script ran

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

api_instance = SubskribeSandboxClient::CustomizationApi.new

account_id = 'account_id_example' # String | account id against which the test needs to happen

body = 'body_example' # String | the zeppa script that needs to be tested


begin
  #Test a plan selection customization zeppa script
  api_instance.test_plan_selection_customization_zeppa_script(account_id, body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling CustomizationApi->test_plan_selection_customization_zeppa_script: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| account id against which the test needs to happen | 
 **body** | **String**| the zeppa script that needs to be tested | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



