# SubskribeSandboxClient::BillingApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_automated_invoice_rule**](BillingApi.md#add_automated_invoice_rule) | **POST** /automatedInvoiceRules | Create an automated invoice rule
[**add_billing_schedule**](BillingApi.md#add_billing_schedule) | **POST** /invoices/schedule | Add a new billing schedule for subscription line item
[**add_subscription_charge_alias**](BillingApi.md#add_subscription_charge_alias) | **PUT** /alias/subscriptionCharge/{aliasId} | Create an alias for a subscription id/charge id pair
[**apply_credit_memo**](BillingApi.md#apply_credit_memo) | **POST** /settlements/applyCreditMemo | Apply a credit memo
[**create_bulk_invoice_run**](BillingApi.md#create_bulk_invoice_run) | **POST** /invoices/bulk | Create a bulk invoice run
[**create_invoice_document**](BillingApi.md#create_invoice_document) | **POST** /invoices/{invoiceNumber}/pdf | Generate invoice PDF
[**delete_billing_schedule**](BillingApi.md#delete_billing_schedule) | **DELETE** /invoices/schedule/{id} | Delete an existing billing schedule
[**delete_invoice**](BillingApi.md#delete_invoice) | **DELETE** /invoices/{number} | Delete invoice
[**delete_subscription_charge_alias**](BillingApi.md#delete_subscription_charge_alias) | **DELETE** /alias/subscriptionCharge/{aliasId} | Delete the specified alias
[**generate_invoice**](BillingApi.md#generate_invoice) | **POST** /invoices/generate | Generate subscription invoices
[**get_account_receivable_contact**](BillingApi.md#get_account_receivable_contact) | **GET** /accountReceivableContact | Get the contact for accounts receivable
[**get_automated_invoice_rule**](BillingApi.md#get_automated_invoice_rule) | **GET** /automatedInvoiceRules/{id} | Get automated invoice rule details
[**get_automated_invoice_rules**](BillingApi.md#get_automated_invoice_rules) | **GET** /automatedInvoiceRules | Get automated invoice rules for a tenant
[**get_billing_schedules**](BillingApi.md#get_billing_schedules) | **GET** /invoices/schedule | Get billing schedules for a subscription line item
[**get_bulk_invoice_run**](BillingApi.md#get_bulk_invoice_run) | **GET** /invoices/bulk/{bulkInvoiceRunId} | Get bulk invoice run details
[**get_bulk_invoice_run_items**](BillingApi.md#get_bulk_invoice_run_items) | **GET** /invoices/bulk/{bulkInvoiceRunId}/runItems | Get items for bulk invoice run
[**get_dunning_setting**](BillingApi.md#get_dunning_setting) | **GET** /dunningSetting | Get dunning settings
[**get_invoice**](BillingApi.md#get_invoice) | **GET** /invoices/{number} | Get invoice details
[**get_invoice_balance**](BillingApi.md#get_invoice_balance) | **GET** /invoices/{number}/balance | Get invoice balance
[**get_invoice_document_pdf**](BillingApi.md#get_invoice_document_pdf) | **GET** /invoices/{invoiceNumber}/pdf | Download invoice PDF
[**get_invoices**](BillingApi.md#get_invoices) | **GET** /invoices | Get all invoices for a subscription
[**get_raw_invoice_document_json**](BillingApi.md#get_raw_invoice_document_json) | **GET** /invoices/{invoiceNumber}/documentJson | Get the invoice document JSON that is used to render invoice PDF
[**get_settlement_application**](BillingApi.md#get_settlement_application) | **GET** /settlements/{id} | Get settlement application details
[**get_settlement_applications**](BillingApi.md#get_settlement_applications) | **GET** /settlements | Get settlement applications
[**get_subscription_charge_alias**](BillingApi.md#get_subscription_charge_alias) | **GET** /alias/subscriptionCharge/{aliasId} | Get the details of an alias
[**get_usage_for_subscription_charge**](BillingApi.md#get_usage_for_subscription_charge) | **GET** /invoices/usage | Get usage
[**list_aliases_for_subscription**](BillingApi.md#list_aliases_for_subscription) | **GET** /alias/subscriptionCharge | Get aliases for a subscription
[**post_invoice**](BillingApi.md#post_invoice) | **POST** /invoices/{number}/post | Mark invoice as posted
[**post_invoices_for_bulk_invoice_run**](BillingApi.md#post_invoices_for_bulk_invoice_run) | **PUT** /invoices/bulk/{bulkInvoiceRunId}/post | Posts invoices for a bulk run
[**preview_invoice_by_order_period**](BillingApi.md#preview_invoice_by_order_period) | **GET** /invoices/unbilledUsage | Get unbilled usage
[**preview_invoice_by_order_period1**](BillingApi.md#preview_invoice_by_order_period1) | **GET** /invoices/preview | Preview invoices
[**put_account_receivable_contact**](BillingApi.md#put_account_receivable_contact) | **PUT** /accountReceivableContact | Set the contact for accounts receivable
[**send_invoice_reminder**](BillingApi.md#send_invoice_reminder) | **POST** /dunning/sendInvoiceReminder/{invoiceNumber} | Send an Invoice Reminder
[**send_test_dunning_email**](BillingApi.md#send_test_dunning_email) | **POST** /dunning/sendTestEmail/{reminderType} | Send a test email
[**update_automated_invoice_rule**](BillingApi.md#update_automated_invoice_rule) | **PUT** /automatedInvoiceRules/{id} | Update automated invoice rule details
[**update_dunning_setting**](BillingApi.md#update_dunning_setting) | **PUT** /dunningSetting | Update dunning settings
[**update_invoice**](BillingApi.md#update_invoice) | **PUT** /invoices/{number} | Update invoice details
[**update_invoice_sequence**](BillingApi.md#update_invoice_sequence) | **POST** /invoices/sequence/{invoiceConfigId} | Update invoice sequence
[**void_invoice**](BillingApi.md#void_invoice) | **PUT** /invoices/{number}/void | Mark invoice as voided


# **add_automated_invoice_rule**
> AutomatedInvoiceRule add_automated_invoice_rule(body)

Create an automated invoice rule

Creates an automated invoice rule with the specified parameters

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

api_instance = SubskribeSandboxClient::BillingApi.new

body = SubskribeSandboxClient::AutomatedInvoiceRuleRequestJson.new # AutomatedInvoiceRuleRequestJson | automated invoice rule


begin
  #Create an automated invoice rule
  result = api_instance.add_automated_invoice_rule(body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->add_automated_invoice_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AutomatedInvoiceRuleRequestJson**](AutomatedInvoiceRuleRequestJson.md)| automated invoice rule | 

### Return type

[**AutomatedInvoiceRule**](AutomatedInvoiceRule.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_billing_schedule**
> String add_billing_schedule(body)

Add a new billing schedule for subscription line item

Creates a new billing schedule entry for an event based charge

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

api_instance = SubskribeSandboxClient::BillingApi.new

body = SubskribeSandboxClient::BillingEventInput.new # BillingEventInput | new billing event


begin
  #Add a new billing schedule for subscription line item
  result = api_instance.add_billing_schedule(body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->add_billing_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BillingEventInput**](BillingEventInput.md)| new billing event | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_subscription_charge_alias**
> add_subscription_charge_alias(alias_id, opts)

Create an alias for a subscription id/charge id pair

This allows you to specify a string alias for a subscription id and a charge id. This can be useful when, for example, you want to upload usage statistics and would rather specify your own id (or another external id), rather than referring to Subskribe's internal ids.

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

api_instance = SubskribeSandboxClient::BillingApi.new

alias_id = 'alias_id_example' # String | alias to map to create the mapping for

opts = { 
  subscription_id: 'subscription_id_example', # String | the subscription id
  charge_id: 'charge_id_example' # String | the charge id
}

begin
  #Create an alias for a subscription id/charge id pair
  api_instance.add_subscription_charge_alias(alias_id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->add_subscription_charge_alias: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | **String**| alias to map to create the mapping for | 
 **subscription_id** | **String**| the subscription id | [optional] 
 **charge_id** | **String**| the charge id | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **apply_credit_memo**
> apply_credit_memo(body)

Apply a credit memo

Applies a credit memo per the specified parameters

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

api_instance = SubskribeSandboxClient::BillingApi.new

body = SubskribeSandboxClient::CreditMemoApplicationJson.new # CreditMemoApplicationJson | application details in json


begin
  #Apply a credit memo
  api_instance.apply_credit_memo(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->apply_credit_memo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreditMemoApplicationJson**](CreditMemoApplicationJson.md)| application details in json | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_bulk_invoice_run**
> String create_bulk_invoice_run(body)

Create a bulk invoice run

Creates a bulk invoice run as specified by the input parameters. On success the id of the run is returned.

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

api_instance = SubskribeSandboxClient::BillingApi.new

body = SubskribeSandboxClient::BulkInvoiceRunInput.new # BulkInvoiceRunInput | json representing the run parameters


begin
  #Create a bulk invoice run
  result = api_instance.create_bulk_invoice_run(body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->create_bulk_invoice_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkInvoiceRunInput**](BulkInvoiceRunInput.md)| json representing the run parameters | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_invoice_document**
> create_invoice_document(invoice_number)

Generate invoice PDF

Generates a PDF version of the specified invoice. Once generated, PDF can be later fetched via a call to /{invoiceNumber}/pdf.

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

api_instance = SubskribeSandboxClient::BillingApi.new

invoice_number = 'invoice_number_example' # String | 


begin
  #Generate invoice PDF
  api_instance.create_invoice_document(invoice_number)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->create_invoice_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_number** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_billing_schedule**
> delete_billing_schedule(id)

Delete an existing billing schedule

Billing schedules must be deleted in reverse chronological order.

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

api_instance = SubskribeSandboxClient::BillingApi.new

id = 'id_example' # String | billing schedule entry id


begin
  #Delete an existing billing schedule
  api_instance.delete_billing_schedule(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->delete_billing_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| billing schedule entry id | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_invoice**
> InvoiceJson delete_invoice(number)

Delete invoice

Deletes the specified invoice

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

api_instance = SubskribeSandboxClient::BillingApi.new

number = 'number_example' # String | number of the invoice


begin
  #Delete invoice
  result = api_instance.delete_invoice(number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->delete_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| number of the invoice | 

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_subscription_charge_alias**
> delete_subscription_charge_alias(alias_id)

Delete the specified alias

Deletes the specified alias mapping

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

api_instance = SubskribeSandboxClient::BillingApi.new

alias_id = 'alias_id_example' # String | 


begin
  #Delete the specified alias
  api_instance.delete_subscription_charge_alias(alias_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->delete_subscription_charge_alias: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_invoice**
> Array&lt;InvoiceJson&gt; generate_invoice(subscription_id, target_date, invoice_charge_inclusion_option, opts)

Generate subscription invoices

Generates the invoices for the given subscription

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

api_instance = SubskribeSandboxClient::BillingApi.new

subscription_id = 'subscription_id_example' # String | id of the subscription

target_date = 789 # Integer | Time in seconds since Epoch (GMT) to generate invoice from

invoice_charge_inclusion_option = 'invoice_charge_inclusion_option_example' # String | types of charges to include

opts = { 
  invoice_date: 789 # Integer | Time in seconds since Epoch (GMT) to set invoice date to
}

begin
  #Generate subscription invoices
  result = api_instance.generate_invoice(subscription_id, target_date, invoice_charge_inclusion_option, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->generate_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| id of the subscription | 
 **target_date** | **Integer**| Time in seconds since Epoch (GMT) to generate invoice from | 
 **invoice_charge_inclusion_option** | **String**| types of charges to include | 
 **invoice_date** | **Integer**| Time in seconds since Epoch (GMT) to set invoice date to | [optional] 

### Return type

[**Array&lt;InvoiceJson&gt;**](InvoiceJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_receivable_contact**
> AccountReceivableContactJson get_account_receivable_contact

Get the contact for accounts receivable

Returns the details of the account receivable contact for your tenant

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

api_instance = SubskribeSandboxClient::BillingApi.new

begin
  #Get the contact for accounts receivable
  result = api_instance.get_account_receivable_contact
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_account_receivable_contact: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountReceivableContactJson**](AccountReceivableContactJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_automated_invoice_rule**
> get_automated_invoice_rule(id)

Get automated invoice rule details

Returns the details of the specified automated invoice rule

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

api_instance = SubskribeSandboxClient::BillingApi.new

id = 'id_example' # String | id of the automated invoice rule


begin
  #Get automated invoice rule details
  api_instance.get_automated_invoice_rule(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_automated_invoice_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the automated invoice rule | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_automated_invoice_rules**
> get_automated_invoice_rules

Get automated invoice rules for a tenant

Returns all the configured automated invoice rules for the tenant

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

api_instance = SubskribeSandboxClient::BillingApi.new

begin
  #Get automated invoice rules for a tenant
  api_instance.get_automated_invoice_rules
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_automated_invoice_rules: #{e}"
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



# **get_billing_schedules**
> Array&lt;BillingEventEntry&gt; get_billing_schedules(subscription_id, subscription_charge_id)

Get billing schedules for a subscription line item

Retrieve all billing schedules for a subscription line item

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

api_instance = SubskribeSandboxClient::BillingApi.new

subscription_id = 'subscription_id_example' # String | 

subscription_charge_id = 'subscription_charge_id_example' # String | 


begin
  #Get billing schedules for a subscription line item
  result = api_instance.get_billing_schedules(subscription_id, subscription_charge_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_billing_schedules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **subscription_charge_id** | **String**|  | 

### Return type

[**Array&lt;BillingEventEntry&gt;**](BillingEventEntry.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bulk_invoice_run**
> BulkInvoiceRun get_bulk_invoice_run(bulk_invoice_run_id)

Get bulk invoice run details

Returns the details of the specified bulk invoice run

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

api_instance = SubskribeSandboxClient::BillingApi.new

bulk_invoice_run_id = 'bulk_invoice_run_id_example' # String | id of the run


begin
  #Get bulk invoice run details
  result = api_instance.get_bulk_invoice_run(bulk_invoice_run_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_bulk_invoice_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_invoice_run_id** | [**String**](.md)| id of the run | 

### Return type

[**BulkInvoiceRun**](BulkInvoiceRun.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bulk_invoice_run_items**
> Array&lt;BulkInvoiceRunItem&gt; get_bulk_invoice_run_items(bulk_invoice_run_id)

Get items for bulk invoice run

Returns the items associated with the specified bulk invoice run

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

api_instance = SubskribeSandboxClient::BillingApi.new

bulk_invoice_run_id = 'bulk_invoice_run_id_example' # String | id of the run


begin
  #Get items for bulk invoice run
  result = api_instance.get_bulk_invoice_run_items(bulk_invoice_run_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_bulk_invoice_run_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_invoice_run_id** | [**String**](.md)| id of the run | 

### Return type

[**Array&lt;BulkInvoiceRunItem&gt;**](BulkInvoiceRunItem.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_dunning_setting**
> DunningSettingJson get_dunning_setting

Get dunning settings

Returns the dunning settings for your tenant

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

api_instance = SubskribeSandboxClient::BillingApi.new

begin
  #Get dunning settings
  result = api_instance.get_dunning_setting
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_dunning_setting: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DunningSettingJson**](DunningSettingJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoice**
> InvoiceJson get_invoice(number)

Get invoice details

Returns the details of the specified invoice number

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

api_instance = SubskribeSandboxClient::BillingApi.new

number = 'number_example' # String | number of the invoice


begin
  #Get invoice details
  result = api_instance.get_invoice(number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| number of the invoice | 

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoice_balance**
> InvoiceBalanceJson get_invoice_balance(number)

Get invoice balance

Returns the balance of the specified invoice number

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

api_instance = SubskribeSandboxClient::BillingApi.new

number = 'number_example' # String | number of the invoice


begin
  #Get invoice balance
  result = api_instance.get_invoice_balance(number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_invoice_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| number of the invoice | 

### Return type

[**InvoiceBalanceJson**](InvoiceBalanceJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoice_document_pdf**
> get_invoice_document_pdf(invoice_number)

Download invoice PDF

Downloads the PDF for an invoice after it has been generated via a POST to /{invoiceNumber}/pdf. The data return will be the PDF document contents.

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

api_instance = SubskribeSandboxClient::BillingApi.new

invoice_number = 'invoice_number_example' # String | number of the invoice


begin
  #Download invoice PDF
  api_instance.get_invoice_document_pdf(invoice_number)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_invoice_document_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_number** | **String**| number of the invoice | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoices**
> InvoiceJsonPaginationResponse get_invoices(opts)

Get all invoices for a subscription

Returns all invoices for a subscription. The result is paginated. Use the cursor returned from a request in subsequent calls to retrieve all results.

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

api_instance = SubskribeSandboxClient::BillingApi.new

opts = { 
  subscription_id: 'subscription_id_example', # String | 
  status: 'status_example', # String | status filter for invoices
  cursor: 'cursor_example', # String | used to iterate through all results
  limit: 56 # Integer | number of items per page
}

begin
  #Get all invoices for a subscription
  result = api_instance.get_invoices(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | [optional] 
 **status** | **String**| status filter for invoices | [optional] 
 **cursor** | [**String**](.md)| used to iterate through all results | [optional] 
 **limit** | **Integer**| number of items per page | [optional] 

### Return type

[**InvoiceJsonPaginationResponse**](InvoiceJsonPaginationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_raw_invoice_document_json**
> get_raw_invoice_document_json(invoice_number)

Get the invoice document JSON that is used to render invoice PDF

Invoice document JSON that contains all details required to render full Invoice document

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

api_instance = SubskribeSandboxClient::BillingApi.new

invoice_number = 'invoice_number_example' # String | number of the invoice


begin
  #Get the invoice document JSON that is used to render invoice PDF
  api_instance.get_raw_invoice_document_json(invoice_number)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_raw_invoice_document_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_number** | **String**| number of the invoice | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_settlement_application**
> SettlementApplication get_settlement_application(id)

Get settlement application details

Gets the details of specified settlement application.

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

api_instance = SubskribeSandboxClient::BillingApi.new

id = 'id_example' # String | id of the settlement application


begin
  #Get settlement application details
  result = api_instance.get_settlement_application(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_settlement_application: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id of the settlement application | 

### Return type

[**SettlementApplication**](SettlementApplication.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_settlement_applications**
> Array&lt;SettlementApplication&gt; get_settlement_applications(invoice_number)

Get settlement applications

Returns the settlement applications for the specified invoice number.

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

api_instance = SubskribeSandboxClient::BillingApi.new

invoice_number = 'invoice_number_example' # String | number of the invoice


begin
  #Get settlement applications
  result = api_instance.get_settlement_applications(invoice_number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_settlement_applications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_number** | **String**| number of the invoice | 

### Return type

[**Array&lt;SettlementApplication&gt;**](SettlementApplication.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_subscription_charge_alias**
> SubscriptionChargeAlias get_subscription_charge_alias(alias_id)

Get the details of an alias

Returns the details of the specified alias id including the subscription id and the charge id it is mapped to.

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

api_instance = SubskribeSandboxClient::BillingApi.new

alias_id = 'alias_id_example' # String | 


begin
  #Get the details of an alias
  result = api_instance.get_subscription_charge_alias(alias_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_subscription_charge_alias: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | **String**|  | 

### Return type

[**SubscriptionChargeAlias**](SubscriptionChargeAlias.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_usage_for_subscription_charge**
> Array&lt;InvoiceItemJson&gt; get_usage_for_subscription_charge(subscription_id, charge_id)

Get usage

Returns the usage invoice items for the specified subscription and charge

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

api_instance = SubskribeSandboxClient::BillingApi.new

subscription_id = 'subscription_id_example' # String | id of the subscription

charge_id = 'charge_id_example' # String | id of the charge


begin
  #Get usage
  result = api_instance.get_usage_for_subscription_charge(subscription_id, charge_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->get_usage_for_subscription_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| id of the subscription | 
 **charge_id** | **String**| id of the charge | 

### Return type

[**Array&lt;InvoiceItemJson&gt;**](InvoiceItemJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_aliases_for_subscription**
> Array&lt;SubscriptionChargeAlias&gt; list_aliases_for_subscription(opts)

Get aliases for a subscription

Returns all aliases for the specified subscription id.

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

api_instance = SubskribeSandboxClient::BillingApi.new

opts = { 
  subscription_id: 'subscription_id_example' # String | id of the subscription
}

begin
  #Get aliases for a subscription
  result = api_instance.list_aliases_for_subscription(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->list_aliases_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| id of the subscription | [optional] 

### Return type

[**Array&lt;SubscriptionChargeAlias&gt;**](SubscriptionChargeAlias.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_invoice**
> InvoiceJson post_invoice(number)

Mark invoice as posted

Marks the specified invoice as posted

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

api_instance = SubskribeSandboxClient::BillingApi.new

number = 'number_example' # String | number of the invoice


begin
  #Mark invoice as posted
  result = api_instance.post_invoice(number)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->post_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| number of the invoice | 

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_invoices_for_bulk_invoice_run**
> BulkInvoiceRun post_invoices_for_bulk_invoice_run(bulk_invoice_run_id, opts)

Posts invoices for a bulk run

Marks all invoices associated with the specified bulk run as posted

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

api_instance = SubskribeSandboxClient::BillingApi.new

bulk_invoice_run_id = 'bulk_invoice_run_id_example' # String | id of the run

opts = { 
  body: [SubskribeSandboxClient::Array<String>.new] # Array<String> | 
}

begin
  #Posts invoices for a bulk run
  result = api_instance.post_invoices_for_bulk_invoice_run(bulk_invoice_run_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->post_invoices_for_bulk_invoice_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_invoice_run_id** | [**String**](.md)| id of the run | 
 **body** | **Array&lt;String&gt;**|  | [optional] 

### Return type

[**BulkInvoiceRun**](BulkInvoiceRun.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **preview_invoice_by_order_period**
> Array&lt;InvoiceItemJson&gt; preview_invoice_by_order_period(subscription_id)

Get unbilled usage

Returns the unbilled usage invoice items for the specified subscription

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

api_instance = SubskribeSandboxClient::BillingApi.new

subscription_id = 'subscription_id_example' # String | id of the subscription


begin
  #Get unbilled usage
  result = api_instance.preview_invoice_by_order_period(subscription_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->preview_invoice_by_order_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| id of the subscription | 

### Return type

[**Array&lt;InvoiceItemJson&gt;**](InvoiceItemJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **preview_invoice_by_order_period1**
> Array&lt;InvoicePreviewJson&gt; preview_invoice_by_order_period1(opts)

Preview invoices

Returns a preview of invoice for the specified order id OR subscription id

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

api_instance = SubskribeSandboxClient::BillingApi.new

opts = { 
  order_id: 'order_id_example', # String | id of order
  subscription_id: 'subscription_id_example' # String | id of subscription
}

begin
  #Preview invoices
  result = api_instance.preview_invoice_by_order_period1(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->preview_invoice_by_order_period1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| id of order | [optional] 
 **subscription_id** | **String**| id of subscription | [optional] 

### Return type

[**Array&lt;InvoicePreviewJson&gt;**](InvoicePreviewJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_account_receivable_contact**
> put_account_receivable_contact(opts)

Set the contact for accounts receivable

Sets the details of the account receivable contact for your tenant

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

api_instance = SubskribeSandboxClient::BillingApi.new

opts = { 
  account_receivable_contact_json: SubskribeSandboxClient::AccountReceivableContactJson.new # AccountReceivableContactJson | contact details
}

begin
  #Set the contact for accounts receivable
  api_instance.put_account_receivable_contact(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->put_account_receivable_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_receivable_contact_json** | [**AccountReceivableContactJson**](AccountReceivableContactJson.md)| contact details | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_invoice_reminder**
> send_invoice_reminder(invoice_number)

Send an Invoice Reminder

Sends a reminder email for the specified invoice

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

api_instance = SubskribeSandboxClient::BillingApi.new

invoice_number = 'invoice_number_example' # String | number of the invoice


begin
  #Send an Invoice Reminder
  api_instance.send_invoice_reminder(invoice_number)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->send_invoice_reminder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_number** | **String**| number of the invoice | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_test_dunning_email**
> send_test_dunning_email(reminder_type)

Send a test email

Sends a test email for dunning to the use associated with this API call. Note A user bound api key is required for this operation.

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

api_instance = SubskribeSandboxClient::BillingApi.new

reminder_type = 'reminder_type_example' # String | type of the reminder


begin
  #Send a test email
  api_instance.send_test_dunning_email(reminder_type)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->send_test_dunning_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminder_type** | **String**| type of the reminder | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_automated_invoice_rule**
> update_automated_invoice_rule(id, body)

Update automated invoice rule details

Updates the details of the specified automated invoice rule

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

api_instance = SubskribeSandboxClient::BillingApi.new

id = 'id_example' # String | id of the automated invoice rule

body = SubskribeSandboxClient::AutomatedInvoiceRuleRequestJson.new # AutomatedInvoiceRuleRequestJson | automated invoice rule


begin
  #Update automated invoice rule details
  api_instance.update_automated_invoice_rule(id, body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->update_automated_invoice_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the automated invoice rule | 
 **body** | [**AutomatedInvoiceRuleRequestJson**](AutomatedInvoiceRuleRequestJson.md)| automated invoice rule | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_dunning_setting**
> update_dunning_setting(opts)

Update dunning settings

Updates the dunning settings for your tenant

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

api_instance = SubskribeSandboxClient::BillingApi.new

opts = { 
  body: SubskribeSandboxClient::DunningSettingJson.new # DunningSettingJson | json representing the dunning settings
}

begin
  #Update dunning settings
  api_instance.update_dunning_setting(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->update_dunning_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DunningSettingJson**](DunningSettingJson.md)| json representing the dunning settings | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_invoice**
> InvoiceJson update_invoice(number, body)

Update invoice details

Updates the details of the specified invoice.

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

api_instance = SubskribeSandboxClient::BillingApi.new

number = 'number_example' # String | number of the invoice

body = SubskribeSandboxClient::UpdateInvoiceRequest.new # UpdateInvoiceRequest | json representing invoice details


begin
  #Update invoice details
  result = api_instance.update_invoice(number, body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->update_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| number of the invoice | 
 **body** | [**UpdateInvoiceRequest**](UpdateInvoiceRequest.md)| json representing invoice details | 

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_invoice_sequence**
> TenantInvoiceConfig update_invoice_sequence(invoice_config_id, opts)

Update invoice sequence

Updates the invoice sequence by invoice config id.

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

api_instance = SubskribeSandboxClient::BillingApi.new

invoice_config_id = 'invoice_config_id_example' # String | invoice config id

opts = { 
  next_invoice_number: 789 # Integer | long integer value
}

begin
  #Update invoice sequence
  result = api_instance.update_invoice_sequence(invoice_config_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->update_invoice_sequence: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_config_id** | **String**| invoice config id | 
 **next_invoice_number** | **Integer**| long integer value | [optional] 

### Return type

[**TenantInvoiceConfig**](TenantInvoiceConfig.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **void_invoice**
> InvoiceJson void_invoice(number, body)

Mark invoice as voided

Marks the specified invoice as voided

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

api_instance = SubskribeSandboxClient::BillingApi.new

number = 'number_example' # String | number of the invoice

body = SubskribeSandboxClient::VoidInvoiceRequest.new # VoidInvoiceRequest | json representing invoice details


begin
  #Mark invoice as voided
  result = api_instance.void_invoice(number, body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling BillingApi->void_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| number of the invoice | 
 **body** | [**VoidInvoiceRequest**](VoidInvoiceRequest.md)| json representing invoice details | 

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



