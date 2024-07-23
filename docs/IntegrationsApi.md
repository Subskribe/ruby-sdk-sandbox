# SubskribeSandboxClient::IntegrationsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_integration**](IntegrationsApi.md#add_integration) | **POST** /anrok | Add a Anrok integration
[**add_integration1**](IntegrationsApi.md#add_integration1) | **POST** /taxjar | Add a TaxJar integration
[**authorization_code_callback**](IntegrationsApi.md#authorization_code_callback) | **GET** /hubspot | Handle HubSpot authorization code
[**authorization_code_callback1**](IntegrationsApi.md#authorization_code_callback1) | **GET** /sfdc | Callback for the authorization code
[**complete_integration**](IntegrationsApi.md#complete_integration) | **GET** /docusign | Complete Docusign integration
[**delete_integration**](IntegrationsApi.md#delete_integration) | **DELETE** /docusign | Delete Docusign integration
[**delete_integration1**](IntegrationsApi.md#delete_integration1) | **DELETE** /hubspot | Delete HubSpot Integration
[**delete_integration2**](IntegrationsApi.md#delete_integration2) | **DELETE** /sfdc | Delete Salesforce integration
[**get_account_by_id**](IntegrationsApi.md#get_account_by_id) | **GET** /sfdc/account/{id} | Get Salesforce account
[**get_accounts_by_name**](IntegrationsApi.md#get_accounts_by_name) | **GET** /sfdc/account | Get Salesforce accounts
[**get_integration**](IntegrationsApi.md#get_integration) | **GET** /anrok/{integrationId} | Get integration details
[**get_integration1**](IntegrationsApi.md#get_integration1) | **GET** /avalara/{integrationId} | Gets Avalara integration details
[**get_integration2**](IntegrationsApi.md#get_integration2) | **GET** /taxjar/{integrationId} | Get integration details
[**get_integration_by_tenant**](IntegrationsApi.md#get_integration_by_tenant) | **GET** /avalara | Gets Avalara integration details
[**get_opportunities_by_account_id**](IntegrationsApi.md#get_opportunities_by_account_id) | **GET** /sfdc/opportunity | Get Salesforce opportunities
[**import_account**](IntegrationsApi.md#import_account) | **POST** /sfdc/account | Import account from Salesforce
[**initiate_integration**](IntegrationsApi.md#initiate_integration) | **POST** /docusign | Create Docusign integration
[**initiate_integration1**](IntegrationsApi.md#initiate_integration1) | **POST** /hubspot | Initiate a HubSpot integration
[**initiate_integration2**](IntegrationsApi.md#initiate_integration2) | **POST** /sfdc | Initiate integration with Salesforce
[**integrate**](IntegrationsApi.md#integrate) | **POST** /avalara | Create an Avalara integration
[**ping**](IntegrationsApi.md#ping) | **PUT** /avalara/ping | Pings Avalara
[**setup_hub_spot**](IntegrationsApi.md#setup_hub_spot) | **POST** /hubspot/setup | Add custom properties to HubSpot
[**sync_account_to_salesforce**](IntegrationsApi.md#sync_account_to_salesforce) | **PUT** /sfdc/syncAccount/{id} | Sync an account to Salesforce
[**sync_deleted_orders_to_salesforce**](IntegrationsApi.md#sync_deleted_orders_to_salesforce) | **PUT** /sfdc/syncDeletedOrders | Sync orders to Salesforce
[**sync_esign_details_for_order_to_hub_spot**](IntegrationsApi.md#sync_esign_details_for_order_to_hub_spot) | **POST** /hubspot/esign/{orderId} | Sync esign details for order id
[**sync_order_to_salesforce**](IntegrationsApi.md#sync_order_to_salesforce) | **PUT** /sfdc/sync/{id} | Sync order to Salesforce
[**sync_orders_to_salesforce**](IntegrationsApi.md#sync_orders_to_salesforce) | **PUT** /sfdc/syncOrders | Sync orders to Salesforce
[**sync_tenant_to_salesforce**](IntegrationsApi.md#sync_tenant_to_salesforce) | **PUT** /sfdc/syncTenant | Sync whole tenant to Salesforce in a paginated fashion
[**test_integration**](IntegrationsApi.md#test_integration) | **PUT** /anrok/test | Test an integration is valid
[**test_integration1**](IntegrationsApi.md#test_integration1) | **PUT** /taxjar/test | Test an integration is valid
[**update_primary_order_id_for_opportunity**](IntegrationsApi.md#update_primary_order_id_for_opportunity) | **PUT** /sfdc/order/{id} | Make an order primary
[**verify_setup**](IntegrationsApi.md#verify_setup) | **POST** /hubspot/setup/verify | Verify HubSpot setup


# **add_integration**
> add_integration(opts)

Add a Anrok integration

Returns the integration ID if successful

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  body: SubskribeSandboxClient::AnrokIntegrationInput.new # AnrokIntegrationInput | Integration input as a JSON
}

begin
  #Add a Anrok integration
  api_instance.add_integration(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->add_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AnrokIntegrationInput**](AnrokIntegrationInput.md)| Integration input as a JSON | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_integration1**
> add_integration1(opts)

Add a TaxJar integration

Returns the integration ID if successful

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  body: SubskribeSandboxClient::TaxJarIntegrationInput.new # TaxJarIntegrationInput | Integration input as a JSON
}

begin
  #Add a TaxJar integration
  api_instance.add_integration1(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->add_integration1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TaxJarIntegrationInput**](TaxJarIntegrationInput.md)| Integration input as a JSON | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **authorization_code_callback**
> authorization_code_callback(code, state, redirect_uri)

Handle HubSpot authorization code

Endpoint to handle and process a HubSpot authorization code

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

code = 'code_example' # String | authorization code

state = 'state_example' # String | HubSpot integration id

redirect_uri = 'redirect_uri_example' # String | uri to redirect to HubSpot


begin
  #Handle HubSpot authorization code
  api_instance.authorization_code_callback(code, state, redirect_uri)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->authorization_code_callback: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| authorization code | 
 **state** | **String**| HubSpot integration id | 
 **redirect_uri** | **String**| uri to redirect to HubSpot | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **authorization_code_callback1**
> authorization_code_callback1(code, state, opts)

Callback for the authorization code

Handles the authorization code callback from Salesforce

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

code = 'code_example' # String | authorization code

state = 'state_example' # String | id of the integration

opts = { 
  redirect_uri: 'redirect_uri_example' # String | uri to redirect to
}

begin
  #Callback for the authorization code
  api_instance.authorization_code_callback1(code, state, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->authorization_code_callback1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| authorization code | 
 **state** | **String**| id of the integration | 
 **redirect_uri** | **String**| uri to redirect to | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **complete_integration**
> DocuSignIntegrationResponseJson complete_integration(opts)

Complete Docusign integration

Complete the docusign integration. This should be called after the integration has been created and an authorization code has been received from Docusign.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  code: 'code_example', # String | authorization code received from Docusign
  state: 'state_example' # String | id of the integration
}

begin
  #Complete Docusign integration
  result = api_instance.complete_integration(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->complete_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| authorization code received from Docusign | [optional] 
 **state** | **String**| id of the integration | [optional] 

### Return type

[**DocuSignIntegrationResponseJson**](DocuSignIntegrationResponseJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_integration**
> DocuSignIntegrationResponseJson delete_integration

Delete Docusign integration

Removes integration with Docusign from your tenant

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

begin
  #Delete Docusign integration
  result = api_instance.delete_integration
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->delete_integration: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocuSignIntegrationResponseJson**](DocuSignIntegrationResponseJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_integration1**
> delete_integration1

Delete HubSpot Integration

Deletes your integration with HubSpot.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

begin
  #Delete HubSpot Integration
  api_instance.delete_integration1
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->delete_integration1: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_integration2**
> delete_integration2

Delete Salesforce integration

Removes the Salesforce integration for the tenant.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

begin
  #Delete Salesforce integration
  api_instance.delete_integration2
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->delete_integration2: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account_by_id**
> SalesforceAccount get_account_by_id(id)

Get Salesforce account

Gets a Salesforce account by its id.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

id = 'id_example' # String | id of the account


begin
  #Get Salesforce account
  result = api_instance.get_account_by_id(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->get_account_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the account | 

### Return type

[**SalesforceAccount**](SalesforceAccount.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_accounts_by_name**
> Array&lt;SalesforceAccount&gt; get_accounts_by_name(name)

Get Salesforce accounts

Returns Salesforce accounts matching the specified name.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

name = 'name_example' # String | account name


begin
  #Get Salesforce accounts
  result = api_instance.get_accounts_by_name(name)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->get_accounts_by_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| account name | 

### Return type

[**Array&lt;SalesforceAccount&gt;**](SalesforceAccount.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_integration**
> Integration get_integration(integration_id)

Get integration details

Gets the integration details of the specified integration id

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

integration_id = 'integration_id_example' # String | integration id


begin
  #Get integration details
  result = api_instance.get_integration(integration_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **String**| integration id | 

### Return type

[**Integration**](Integration.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_integration1**
> AvalaraIntegration get_integration1(integration_id)

Gets Avalara integration details

Gets the integration details of the specified integration id

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

integration_id = 'integration_id_example' # String | integration id


begin
  #Gets Avalara integration details
  result = api_instance.get_integration1(integration_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **String**| integration id | 

### Return type

[**AvalaraIntegration**](AvalaraIntegration.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_integration2**
> TaxJarIntegration get_integration2(integration_id)

Get integration details

Gets the integration details of the specified integration id

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

integration_id = 'integration_id_example' # String | integration id


begin
  #Get integration details
  result = api_instance.get_integration2(integration_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **String**| integration id | 

### Return type

[**TaxJarIntegration**](TaxJarIntegration.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_integration_by_tenant**
> AvalaraIntegration get_integration_by_tenant

Gets Avalara integration details

Returns the details of the Avalara integration for your tenant

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

begin
  #Gets Avalara integration details
  result = api_instance.get_integration_by_tenant
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration_by_tenant: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AvalaraIntegration**](AvalaraIntegration.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_opportunities_by_account_id**
> Array&lt;Opportunity&gt; get_opportunities_by_account_id(account_id)

Get Salesforce opportunities

Returns the Salesforce opportunities associated withe the specified account.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

account_id = 'account_id_example' # String | id of the account


begin
  #Get Salesforce opportunities
  result = api_instance.get_opportunities_by_account_id(account_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->get_opportunities_by_account_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| id of the account | 

### Return type

[**Array&lt;Opportunity&gt;**](Opportunity.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_account**
> import_account(body)

Import account from Salesforce

Imports an account from Salesforce. On success a redirect uri is returned.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

body = SubskribeSandboxClient::SalesforceAccount.new # SalesforceAccount | json representation of the account


begin
  #Import account from Salesforce
  api_instance.import_account(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->import_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SalesforceAccount**](SalesforceAccount.md)| json representation of the account | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **initiate_integration**
> initiate_integration(opts)

Create Docusign integration

Creates an integration with Docusign. On success a redirect URL is returned.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  body: SubskribeSandboxClient::DocuSignIntegrationRequestJson.new # DocuSignIntegrationRequestJson | details of the integration
}

begin
  #Create Docusign integration
  api_instance.initiate_integration(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->initiate_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DocuSignIntegrationRequestJson**](DocuSignIntegrationRequestJson.md)| details of the integration | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **initiate_integration1**
> String initiate_integration1(opts)

Initiate a HubSpot integration

Initiates an integration with HubSpot. On success redirect URL is returned.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  email: 'email_example' # String | admin email
}

begin
  #Initiate a HubSpot integration
  result = api_instance.initiate_integration1(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->initiate_integration1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| admin email | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **initiate_integration2**
> initiate_integration2(opts)

Initiate integration with Salesforce

Initiate a Salesforce integration. On success a redirect url is returned.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  body: SubskribeSandboxClient::SalesforceClientIntegrationRequestJson.new # SalesforceClientIntegrationRequestJson | 
}

begin
  #Initiate integration with Salesforce
  api_instance.initiate_integration2(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->initiate_integration2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SalesforceClientIntegrationRequestJson**](SalesforceClientIntegrationRequestJson.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **integrate**
> integrate(opts)

Create an Avalara integration

Creates an integration with Avalara according to the specified details. On success the id of the integration is returned

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  body: SubskribeSandboxClient::AvalaraIntegrationInput.new # AvalaraIntegrationInput | json representing the integration
}

begin
  #Create an Avalara integration
  api_instance.integrate(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->integrate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AvalaraIntegrationInput**](AvalaraIntegrationInput.md)| json representing the integration | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ping**
> ping(opts)

Pings Avalara

Once an integration is set up Avalara can be pinged to ensure it is working correctly. On success \"PONG\" is returned.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  body: SubskribeSandboxClient::AvalaraIntegrationInput.new # AvalaraIntegrationInput | 
}

begin
  #Pings Avalara
  api_instance.ping(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->ping: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AvalaraIntegrationInput**](AvalaraIntegrationInput.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **setup_hub_spot**
> setup_hub_spot

Add custom properties to HubSpot

Add custom properties to HubSpot

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

begin
  #Add custom properties to HubSpot
  api_instance.setup_hub_spot
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->setup_hub_spot: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sync_account_to_salesforce**
> sync_account_to_salesforce(id)

Sync an account to Salesforce

Syncs the account ARR and its orders to Salesforce.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

id = 'id_example' # String | account id to sync


begin
  #Sync an account to Salesforce
  api_instance.sync_account_to_salesforce(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->sync_account_to_salesforce: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| account id to sync | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sync_deleted_orders_to_salesforce**
> OrderJson sync_deleted_orders_to_salesforce(ids)

Sync orders to Salesforce

Syncs the specified order to Salesforce.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

ids = [SubskribeSandboxClient::Array<String>.new] # Array<String> | opportunityIds


begin
  #Sync orders to Salesforce
  result = api_instance.sync_deleted_orders_to_salesforce(ids)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->sync_deleted_orders_to_salesforce: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **Array&lt;String&gt;**| opportunityIds | 

### Return type

[**OrderJson**](OrderJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sync_esign_details_for_order_to_hub_spot**
> sync_esign_details_for_order_to_hub_spot(order_id)

Sync esign details for order id



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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

order_id = 'order_id_example' # String | 


begin
  #Sync esign details for order id
  api_instance.sync_esign_details_for_order_to_hub_spot(order_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->sync_esign_details_for_order_to_hub_spot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sync_order_to_salesforce**
> OrderJson sync_order_to_salesforce(id)

Sync order to Salesforce

Syncs the specified order to Salesforce.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

id = 'id_example' # String | order id


begin
  #Sync order to Salesforce
  result = api_instance.sync_order_to_salesforce(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->sync_order_to_salesforce: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| order id | 

### Return type

[**OrderJson**](OrderJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sync_orders_to_salesforce**
> OrderJson sync_orders_to_salesforce(ids)

Sync orders to Salesforce

Syncs the specified order to Salesforce.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

ids = [SubskribeSandboxClient::Array<String>.new] # Array<String> | order ids


begin
  #Sync orders to Salesforce
  result = api_instance.sync_orders_to_salesforce(ids)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->sync_orders_to_salesforce: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **Array&lt;String&gt;**| order ids | 

### Return type

[**OrderJson**](OrderJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sync_tenant_to_salesforce**
> sync_tenant_to_salesforce(tenant_id, opts)

Sync whole tenant to Salesforce in a paginated fashion

Syncs the specified tenant to Salesforce. Returns paginated JSON of accounts which were synced

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

tenant_id = 'tenant_id_example' # String | 

opts = { 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  #Sync whole tenant to Salesforce in a paginated fashion
  api_instance.sync_tenant_to_salesforce(tenant_id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->sync_tenant_to_salesforce: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**|  | 
 **cursor** | [**String**](.md)|  | [optional] 
 **limit** | **Integer**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **test_integration**
> String test_integration(opts)

Test an integration is valid



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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  body: SubskribeSandboxClient::AnrokIntegrationInput.new # AnrokIntegrationInput | Integration input as a JSON
}

begin
  #Test an integration is valid
  result = api_instance.test_integration(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->test_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AnrokIntegrationInput**](AnrokIntegrationInput.md)| Integration input as a JSON | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **test_integration1**
> String test_integration1(opts)

Test an integration is valid



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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

opts = { 
  body: SubskribeSandboxClient::TaxJarIntegrationInput.new # TaxJarIntegrationInput | Integration input as a JSON
}

begin
  #Test an integration is valid
  result = api_instance.test_integration1(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->test_integration1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TaxJarIntegrationInput**](TaxJarIntegrationInput.md)| Integration input as a JSON | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_primary_order_id_for_opportunity**
> OrderJson update_primary_order_id_for_opportunity(id)

Make an order primary

Marks an order as the primary order for its opportunity.

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

id = 'id_example' # String | order id


begin
  #Make an order primary
  result = api_instance.update_primary_order_id_for_opportunity(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->update_primary_order_id_for_opportunity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| order id | 

### Return type

[**OrderJson**](OrderJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **verify_setup**
> verify_setup

Verify HubSpot setup

Verify custom objects and properties

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

api_instance = SubskribeSandboxClient::IntegrationsApi.new

begin
  #Verify HubSpot setup
  api_instance.verify_setup
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling IntegrationsApi->verify_setup: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



