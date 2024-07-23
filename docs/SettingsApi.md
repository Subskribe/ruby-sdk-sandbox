# SubskribeSandboxClient::SettingsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_unit_of_measure**](SettingsApi.md#activate_unit_of_measure) | **POST** /unitsOfMeasure/{id}/activate | Activate unit of measure
[**add_tax_rate**](SettingsApi.md#add_tax_rate) | **POST** /taxrates | Add tax rate
[**add_term_section**](SettingsApi.md#add_term_section) | **POST** /termsections | Add predefined terms section
[**add_unit_of_measure**](SettingsApi.md#add_unit_of_measure) | **POST** /unitsOfMeasure | Add unit of measure
[**delete_tax_rate**](SettingsApi.md#delete_tax_rate) | **DELETE** /taxrates/{id} | Delete tax rate
[**delete_term_section**](SettingsApi.md#delete_term_section) | **DELETE** /termsections/{id} | Delete predefined terms section
[**delete_unit_of_measure**](SettingsApi.md#delete_unit_of_measure) | **DELETE** /unitsOfMeasure/{id} | Delete unit of measure
[**deprecate_unit_of_measure**](SettingsApi.md#deprecate_unit_of_measure) | **POST** /unitsOfMeasure/{id}/deprecate | Deprecate unit of measure
[**get_payment_term_settings**](SettingsApi.md#get_payment_term_settings) | **GET** /settings/paymentTerms | Get payment term settings
[**get_supported_currencies**](SettingsApi.md#get_supported_currencies) | **GET** /settings/supportedCurrencies | Get supported currencies
[**get_tax_rate**](SettingsApi.md#get_tax_rate) | **GET** /taxrates/{id} | Get tax rate by Id
[**get_tax_rates**](SettingsApi.md#get_tax_rates) | **GET** /taxrates | Get tax rates
[**get_tenant**](SettingsApi.md#get_tenant) | **GET** /tenants | Get tenant details
[**get_tenant_logo**](SettingsApi.md#get_tenant_logo) | **GET** /tenants/logo | Get tenant logo
[**get_tenant_setting**](SettingsApi.md#get_tenant_setting) | **GET** /settings | Get tenant settings
[**get_term_section**](SettingsApi.md#get_term_section) | **GET** /termsections/{id} | Get predefined terms section detail
[**get_term_sections**](SettingsApi.md#get_term_sections) | **GET** /termsections | Get predefined terms sections
[**get_units_of_measure**](SettingsApi.md#get_units_of_measure) | **GET** /unitsOfMeasure | Get units of measure
[**update_payment_term_settings**](SettingsApi.md#update_payment_term_settings) | **PUT** /settings/paymentTerms | Update payment term settings
[**update_supported_currencies**](SettingsApi.md#update_supported_currencies) | **PUT** /settings/supportedCurrencies | Update supported currencies
[**update_tax_rate**](SettingsApi.md#update_tax_rate) | **PUT** /taxrates/{id} | Update tax rate
[**update_tenant**](SettingsApi.md#update_tenant) | **PUT** /tenants | Update tenant details
[**update_tenant_setting**](SettingsApi.md#update_tenant_setting) | **PUT** /settings | Update tenant settings
[**update_term_section**](SettingsApi.md#update_term_section) | **PUT** /termsections/{id} | Update predefined terms section
[**update_unit_of_measure**](SettingsApi.md#update_unit_of_measure) | **PUT** /unitsOfMeasure/{id} | Update unit of measure
[**upload_tenant_logo**](SettingsApi.md#upload_tenant_logo) | **PUT** /tenants/logo | Update tenant logo


# **activate_unit_of_measure**
> activate_unit_of_measure(id)

Activate unit of measure

Activates the specified unit of measure making it available to be attached to charges

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 


begin
  #Activate unit of measure
  api_instance.activate_unit_of_measure(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->activate_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_tax_rate**
> TaxRateJson add_tax_rate(opts)

Add tax rate

Add a new tax rate object

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

api_instance = SubskribeSandboxClient::SettingsApi.new

opts = { 
  body: SubskribeSandboxClient::TaxRateJson.new # TaxRateJson | 
}

begin
  #Add tax rate
  result = api_instance.add_tax_rate(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->add_tax_rate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TaxRateJson**](TaxRateJson.md)|  | [optional] 

### Return type

[**TaxRateJson**](TaxRateJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_term_section**
> DocumentSection add_term_section(opts)

Add predefined terms section

Adds a predefined terms section.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

opts = { 
  body: SubskribeSandboxClient::DocumentSection.new # DocumentSection | 
}

begin
  #Add predefined terms section
  result = api_instance.add_term_section(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->add_term_section: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DocumentSection**](DocumentSection.md)|  | [optional] 

### Return type

[**DocumentSection**](DocumentSection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_unit_of_measure**
> UnitOfMeasureJson add_unit_of_measure(opts)

Add unit of measure

Add a new instance of unit of measure as specified by the input

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

api_instance = SubskribeSandboxClient::SettingsApi.new

opts = { 
  body: SubskribeSandboxClient::UnitOfMeasureJson.new # UnitOfMeasureJson | 
}

begin
  #Add unit of measure
  result = api_instance.add_unit_of_measure(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->add_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UnitOfMeasureJson**](UnitOfMeasureJson.md)|  | [optional] 

### Return type

[**UnitOfMeasureJson**](UnitOfMeasureJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_tax_rate**
> TaxRateJson delete_tax_rate(id)

Delete tax rate

Deletes the tax rate object by Id. If successful the deleted tax rate object is returned

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 


begin
  #Delete tax rate
  result = api_instance.delete_tax_rate(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->delete_tax_rate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**TaxRateJson**](TaxRateJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_term_section**
> delete_term_section(id)

Delete predefined terms section

Deletes the predefined terms section specified.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 


begin
  #Delete predefined terms section
  api_instance.delete_term_section(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->delete_term_section: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_unit_of_measure**
> UnitOfMeasureJson delete_unit_of_measure(id)

Delete unit of measure

Delete the unit of measure by Id provided. Returns the deleted unit of measure object if successful.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 


begin
  #Delete unit of measure
  result = api_instance.delete_unit_of_measure(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->delete_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**UnitOfMeasureJson**](UnitOfMeasureJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **deprecate_unit_of_measure**
> deprecate_unit_of_measure(id)

Deprecate unit of measure

Deprecates the specified unit of measure making it unavailable to be attached to charges going forward

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 


begin
  #Deprecate unit of measure
  api_instance.deprecate_unit_of_measure(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->deprecate_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment_term_settings**
> get_payment_term_settings

Get payment term settings



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

api_instance = SubskribeSandboxClient::SettingsApi.new

begin
  #Get payment term settings
  api_instance.get_payment_term_settings
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_payment_term_settings: #{e}"
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



# **get_supported_currencies**
> get_supported_currencies

Get supported currencies

Get supported currencies for your tenant

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

api_instance = SubskribeSandboxClient::SettingsApi.new

begin
  #Get supported currencies
  api_instance.get_supported_currencies
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_supported_currencies: #{e}"
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



# **get_tax_rate**
> TaxRatePaginationResponseJson get_tax_rate(id)

Get tax rate by Id

Retrieves the tax rate object by Id

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 


begin
  #Get tax rate by Id
  result = api_instance.get_tax_rate(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_tax_rate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**TaxRatePaginationResponseJson**](TaxRatePaginationResponseJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tax_rates**
> TaxRatePaginationResponseJson get_tax_rates(opts)

Get tax rates

Get all available tax rates. The result is paginated. To retrieve all results pass the cursor returned from a call to the next call until all results are returned.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

opts = { 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  #Get tax rates
  result = api_instance.get_tax_rates(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_tax_rates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | [**String**](.md)|  | [optional] 
 **limit** | **Integer**|  | [optional] 

### Return type

[**TaxRatePaginationResponseJson**](TaxRatePaginationResponseJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tenant**
> TenantJson get_tenant

Get tenant details

Get the details of the current tenant

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

api_instance = SubskribeSandboxClient::SettingsApi.new

begin
  #Get tenant details
  result = api_instance.get_tenant
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_tenant: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantJson**](TenantJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tenant_logo**
> get_tenant_logo

Get tenant logo

Get the current logo stored

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

api_instance = SubskribeSandboxClient::SettingsApi.new

begin
  #Get tenant logo
  api_instance.get_tenant_logo
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_tenant_logo: #{e}"
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
 - **Accept**: image/png, application/json



# **get_tenant_setting**
> TenantSettingJson get_tenant_setting

Get tenant settings

Returns all tenant settings for your tenant.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

begin
  #Get tenant settings
  result = api_instance.get_tenant_setting
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_tenant_setting: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantSettingJson**](TenantSettingJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_term_section**
> DocumentSection get_term_section(id)

Get predefined terms section detail

Returns predefined terms section detail.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 


begin
  #Get predefined terms section detail
  result = api_instance.get_term_section(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_term_section: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DocumentSection**](DocumentSection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_term_sections**
> DocumentSection get_term_sections

Get predefined terms sections

Returns predefined terms sections.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

begin
  #Get predefined terms sections
  result = api_instance.get_term_sections
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_term_sections: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocumentSection**](DocumentSection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_units_of_measure**
> UnitOfMeasurePaginationResponseJson get_units_of_measure(opts)

Get units of measure

Returns a paginated list of units of measure

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

api_instance = SubskribeSandboxClient::SettingsApi.new

opts = { 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  #Get units of measure
  result = api_instance.get_units_of_measure(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_units_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | [**String**](.md)|  | [optional] 
 **limit** | **Integer**|  | [optional] 

### Return type

[**UnitOfMeasurePaginationResponseJson**](UnitOfMeasurePaginationResponseJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_payment_term_settings**
> update_payment_term_settings(body)

Update payment term settings



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

api_instance = SubskribeSandboxClient::SettingsApi.new

body = SubskribeSandboxClient::PaymentTermSettingsJson.new # PaymentTermSettingsJson | json representation of the payment term settings


begin
  #Update payment term settings
  api_instance.update_payment_term_settings(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->update_payment_term_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PaymentTermSettingsJson**](PaymentTermSettingsJson.md)| json representation of the payment term settings | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_supported_currencies**
> update_supported_currencies(opts)

Update supported currencies

Update supported currencies for your tenant

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

api_instance = SubskribeSandboxClient::SettingsApi.new

opts = { 
  body: [SubskribeSandboxClient::Array<String>.new] # Array<String> | 
}

begin
  #Update supported currencies
  api_instance.update_supported_currencies(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->update_supported_currencies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Array&lt;String&gt;**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_tax_rate**
> update_tax_rate(id, opts)

Update tax rate

Updates the specific tax rate object

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::TaxRateJson.new # TaxRateJson | 
}

begin
  #Update tax rate
  api_instance.update_tax_rate(id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->update_tax_rate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **body** | [**TaxRateJson**](TaxRateJson.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_tenant**
> update_tenant(opts)

Update tenant details

Updates the details of the current tenant based on the input

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

api_instance = SubskribeSandboxClient::SettingsApi.new

opts = { 
  body: SubskribeSandboxClient::TenantJson.new # TenantJson | 
}

begin
  #Update tenant details
  api_instance.update_tenant(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->update_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TenantJson**](TenantJson.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_tenant_setting**
> update_tenant_setting(body)

Update tenant settings

Updates settings for your tenant.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

body = SubskribeSandboxClient::TenantSettingJson.new # TenantSettingJson | json representation of the settings


begin
  #Update tenant settings
  api_instance.update_tenant_setting(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->update_tenant_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TenantSettingJson**](TenantSettingJson.md)| json representation of the settings | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_term_section**
> DocumentSection update_term_section(id, opts)

Update predefined terms section

Updates the predefined terms section specified.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::DocumentSection.new # DocumentSection | 
}

begin
  #Update predefined terms section
  result = api_instance.update_term_section(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->update_term_section: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**DocumentSection**](DocumentSection.md)|  | [optional] 

### Return type

[**DocumentSection**](DocumentSection.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_unit_of_measure**
> UnitOfMeasureJson update_unit_of_measure(id, opts)

Update unit of measure

Update the unit of measure by Id provided.

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

api_instance = SubskribeSandboxClient::SettingsApi.new

id = 'id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::UnitOfMeasureJson.new # UnitOfMeasureJson | 
}

begin
  #Update unit of measure
  result = api_instance.update_unit_of_measure(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->update_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **body** | [**UnitOfMeasureJson**](UnitOfMeasureJson.md)|  | [optional] 

### Return type

[**UnitOfMeasureJson**](UnitOfMeasureJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload_tenant_logo**
> TenantJson upload_tenant_logo(opts)

Update tenant logo

Updates the logo used in external facing communication such as order forms and invoices

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

api_instance = SubskribeSandboxClient::SettingsApi.new

opts = { 
  file: File.new('/path/to/file.txt') # File | 
}

begin
  #Update tenant logo
  result = api_instance.upload_tenant_logo(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->upload_tenant_logo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  | [optional] 

### Return type

[**TenantJson**](TenantJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



