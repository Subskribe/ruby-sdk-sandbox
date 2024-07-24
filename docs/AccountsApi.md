# SubskribeSandboxClient::AccountsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_account**](AccountsApi.md#add_account) | **POST** /accounts | Add a new account
[**add_account_contact**](AccountsApi.md#add_account_contact) | **POST** /accounts/{accountId}/contacts | Add a contact for an account
[**add_account_payment_method**](AccountsApi.md#add_account_payment_method) | **POST** /accounts/{accountId}/paymentMethods | Add a payment method to an account
[**delete_account**](AccountsApi.md#delete_account) | **DELETE** /accounts/{id} | Delete an account
[**delete_account_contact**](AccountsApi.md#delete_account_contact) | **DELETE** /accounts/{accountId}/contacts/{contactId} | Delete a contact
[**get_account**](AccountsApi.md#get_account) | **GET** /accounts/{id} | Get an account by id
[**get_account_contact**](AccountsApi.md#get_account_contact) | **GET** /accounts/{accountId}/contacts/{contactId} | Gets contact details
[**get_account_contacts**](AccountsApi.md#get_account_contacts) | **GET** /accounts/{accountId}/contacts | Get contacts for an account
[**get_account_metrics**](AccountsApi.md#get_account_metrics) | **GET** /accounts/{id}/metrics | Returns metrics for the specified account
[**get_account_payment_methods**](AccountsApi.md#get_account_payment_methods) | **GET** /accounts/{accountId}/paymentMethods | Get the payment methods for an account
[**get_accounts**](AccountsApi.md#get_accounts) | **GET** /accounts | Get all accounts
[**get_payment_method**](AccountsApi.md#get_payment_method) | **GET** /accounts/{accountId}/paymentMethods/{id} | Get the details of a payment method
[**import_crm_account**](AccountsApi.md#import_crm_account) | **POST** /accounts/crm/import | Import an account from a CRM
[**update_account**](AccountsApi.md#update_account) | **PUT** /accounts/{id} | Update an account
[**update_account_contact**](AccountsApi.md#update_account_contact) | **PUT** /accounts/{accountId}/contacts/{contactId} | Update a contact


# **add_account**
> AccountJson add_account(opts)

Add a new account

Create an account with the specified parameters. On success, the id of the newly created account is returned

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

api_instance = SubskribeSandboxClient::AccountsApi.new

opts = { 
  body: SubskribeSandboxClient::AccountJson.new # AccountJson | 
}

begin
  #Add a new account
  result = api_instance.add_account(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->add_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountJson**](AccountJson.md)|  | [optional] 

### Return type

[**AccountJson**](AccountJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_account_contact**
> AccountContactJson add_account_contact(account_id, opts)

Add a contact for an account

Creates and adds a new contact for the specified account and returns the new contact ID

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

api_instance = SubskribeSandboxClient::AccountsApi.new

account_id = 'account_id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::AccountContactJson.new, # AccountContactJson | 
  skip_address_validation: true, # BOOLEAN | value = perform basic address validation
  strict_validation: true # BOOLEAN | value = require the address to match a canonical address, if it exists
}

begin
  #Add a contact for an account
  result = api_instance.add_account_contact(account_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->add_account_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**AccountContactJson**](AccountContactJson.md)|  | [optional] 
 **skip_address_validation** | **BOOLEAN**| value &#x3D; perform basic address validation | [optional] 
 **strict_validation** | **BOOLEAN**| value &#x3D; require the address to match a canonical address, if it exists | [optional] 

### Return type

[**AccountContactJson**](AccountContactJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_account_payment_method**
> AccountPaymentMethodJson add_account_payment_method(account_id, opts)

Add a payment method to an account

Add a payment method to the specified account and return its ID

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

api_instance = SubskribeSandboxClient::AccountsApi.new

account_id = 'account_id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::AccountPaymentMethodJson.new # AccountPaymentMethodJson | 
}

begin
  #Add a payment method to an account
  result = api_instance.add_account_payment_method(account_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->add_account_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**AccountPaymentMethodJson**](AccountPaymentMethodJson.md)|  | [optional] 

### Return type

[**AccountPaymentMethodJson**](AccountPaymentMethodJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_account**
> delete_account(id)

Delete an account

Deletes the account associated with the passed ID

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

api_instance = SubskribeSandboxClient::AccountsApi.new

id = 'id_example' # String | 


begin
  #Delete an account
  api_instance.delete_account(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->delete_account: #{e}"
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



# **delete_account_contact**
> delete_account_contact(contact_id, account_id)

Delete a contact

Deletes the contact specified by the account id and contact id

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

api_instance = SubskribeSandboxClient::AccountsApi.new

contact_id = 'contact_id_example' # String | 

account_id = 'account_id_example' # String | 


begin
  #Delete a contact
  api_instance.delete_account_contact(contact_id, account_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->delete_account_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | **String**|  | 
 **account_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account**
> AccountJson get_account(id, opts)

Get an account by id

Returns the details of the account specified by the passed id

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

api_instance = SubskribeSandboxClient::AccountsApi.new

id = 'id_example' # String | 

opts = { 
  id_type: 'id_type_example' # String | 
}

begin
  #Get an account by id
  result = api_instance.get_account(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **id_type** | **String**|  | [optional] 

### Return type

[**AccountJson**](AccountJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_contact**
> AccountContactJson get_account_contact(account_id, contact_id)

Gets contact details

Returns the details of the specified contact

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

api_instance = SubskribeSandboxClient::AccountsApi.new

account_id = 'account_id_example' # String | 

contact_id = 'contact_id_example' # String | 


begin
  #Gets contact details
  result = api_instance.get_account_contact(account_id, contact_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **contact_id** | **String**|  | 

### Return type

[**AccountContactJson**](AccountContactJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_contacts**
> Array&lt;AccountContactJson&gt; get_account_contacts(account_id, opts)

Get contacts for an account

Returns a list of contacts associated with the specified account id

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

api_instance = SubskribeSandboxClient::AccountsApi.new

account_id = 'account_id_example' # String | 

opts = { 
  expand: true # BOOLEAN | 
}

begin
  #Get contacts for an account
  result = api_instance.get_account_contacts(account_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **expand** | **BOOLEAN**|  | [optional] 

### Return type

[**Array&lt;AccountContactJson&gt;**](AccountContactJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_metrics**
> MetricsJson get_account_metrics(id, opts)

Returns metrics for the specified account

Fetches metrics such as ARR, TCV, etc for the specified account as of the specified target date

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

api_instance = SubskribeSandboxClient::AccountsApi.new

id = 'id_example' # String | 

opts = { 
  target_date: 789 # Integer | 
}

begin
  #Returns metrics for the specified account
  result = api_instance.get_account_metrics(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **target_date** | **Integer**|  | [optional] 

### Return type

[**MetricsJson**](MetricsJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_payment_methods**
> Array&lt;AccountPaymentMethodJson&gt; get_account_payment_methods(account_id)

Get the payment methods for an account

Returns a list of payment methods for the specified account id

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

api_instance = SubskribeSandboxClient::AccountsApi.new

account_id = 'account_id_example' # String | 


begin
  #Get the payment methods for an account
  result = api_instance.get_account_payment_methods(account_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 

### Return type

[**Array&lt;AccountPaymentMethodJson&gt;**](AccountPaymentMethodJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_accounts**
> PaginatedAccountsResponse get_accounts(opts)

Get all accounts

Returns a paginated list of accounts

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

api_instance = SubskribeSandboxClient::AccountsApi.new

opts = { 
  cursor: 'cursor_example', # String | 
  limit: 56, # Integer | 
  type: 'type_example' # String | 
}

begin
  #Get all accounts
  result = api_instance.get_accounts(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | [**String**](.md)|  | [optional] 
 **limit** | **Integer**|  | [optional] 
 **type** | **String**|  | [optional] 

### Return type

[**PaginatedAccountsResponse**](PaginatedAccountsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment_method**
> AccountPaymentMethodJson get_payment_method(account_id, id)

Get the details of a payment method

Returns the details of the payment method for the specified account id and payment method id

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

api_instance = SubskribeSandboxClient::AccountsApi.new

account_id = 'account_id_example' # String | 

id = 'id_example' # String | 


begin
  #Get the details of a payment method
  result = api_instance.get_payment_method(account_id, id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->get_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **id** | [**String**](.md)|  | 

### Return type

[**AccountPaymentMethodJson**](AccountPaymentMethodJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_crm_account**
> CrmAccountImportResponse import_crm_account(opts)

Import an account from a CRM

Ensures an account exists which matches the passed details.If an account exists that has a matching CRM Id, it will be updated, if not, it will be created

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

api_instance = SubskribeSandboxClient::AccountsApi.new

opts = { 
  body: SubskribeSandboxClient::AccountJson.new # AccountJson | 
}

begin
  #Import an account from a CRM
  result = api_instance.import_crm_account(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->import_crm_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountJson**](AccountJson.md)|  | [optional] 

### Return type

[**CrmAccountImportResponse**](CrmAccountImportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_account**
> update_account(id, opts)

Update an account

Updates an existing account with the specified parameters

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

api_instance = SubskribeSandboxClient::AccountsApi.new

id = 'id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::AccountJson.new # AccountJson | 
}

begin
  #Update an account
  api_instance.update_account(id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->update_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**AccountJson**](AccountJson.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_account_contact**
> update_account_contact(account_id, contact_id, opts)

Update a contact

Updates the contact specified by the account id and contact id with the passed information

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

api_instance = SubskribeSandboxClient::AccountsApi.new

account_id = 'account_id_example' # String | 

contact_id = 'contact_id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::AccountContactJson.new, # AccountContactJson | 
  skip_address_validation: true, # BOOLEAN | 
  strict_validation: true # BOOLEAN | 
}

begin
  #Update a contact
  api_instance.update_account_contact(account_id, contact_id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AccountsApi->update_account_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **contact_id** | **String**|  | 
 **body** | [**AccountContactJson**](AccountContactJson.md)|  | [optional] 
 **skip_address_validation** | **BOOLEAN**|  | [optional] 
 **strict_validation** | **BOOLEAN**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



