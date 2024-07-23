# SubskribeSandboxClient::OrdersApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_document_template**](OrdersApi.md#add_document_template) | **POST** /templates | Add new predefined terms
[**add_order**](OrdersApi.md#add_order) | **POST** /orders | Create an order
[**create_composite_order_document**](OrdersApi.md#create_composite_order_document) | **POST** /compositeOrders/{id}/pdf | Generate a composite order PDF
[**create_order_document**](OrdersApi.md#create_order_document) | **POST** /orders/{id}/pdf | Generate an order PDF
[**delete_document_template**](OrdersApi.md#delete_document_template) | **DELETE** /templates/{id} | Delete predefined terms
[**delete_order**](OrdersApi.md#delete_order) | **DELETE** /orders/{id} | Delete an order
[**execute_order**](OrdersApi.md#execute_order) | **PUT** /orders/{id}/execute | Mark order as executed
[**force_execute_order**](OrdersApi.md#force_execute_order) | **PUT** /orders/{id}/execute/force | Mark order as executed
[**get_composite_order_document**](OrdersApi.md#get_composite_order_document) | **GET** /compositeOrders/{id}/pdf | Fetch composite order form PDF
[**get_document_template**](OrdersApi.md#get_document_template) | **GET** /templates/{id} | Get predefined terms detail
[**get_document_templates**](OrdersApi.md#get_document_templates) | **GET** /templates | Get predefined terms
[**get_opportunities**](OrdersApi.md#get_opportunities) | **GET** /opportunity | Return all opportunities
[**get_opportunity_by_crm_opportunity_id**](OrdersApi.md#get_opportunity_by_crm_opportunity_id) | **GET** /opportunity/{id} | Return details of an opportunity
[**get_order**](OrdersApi.md#get_order) | **GET** /orders/{id} | Get order details
[**get_order_document1**](OrdersApi.md#get_order_document1) | **GET** /orders/{id}/pdf | Fetch order form PDF
[**get_order_document_doc**](OrdersApi.md#get_order_document_doc) | **GET** /orders/{id}/doc | Download word doc version of order form
[**get_order_line_metrics**](OrdersApi.md#get_order_line_metrics) | **GET** /orders/{id}/lineItems/metrics | Get order line metrics
[**get_order_metrics**](OrdersApi.md#get_order_metrics) | **GET** /orders/{id}/metrics | Get order metrics
[**get_orders**](OrdersApi.md#get_orders) | **GET** /orders | Get all Orders
[**get_orders_by_crm_opportunity_id**](OrdersApi.md#get_orders_by_crm_opportunity_id) | **GET** /opportunity/crm/{id}/orders | Return a list of orders associated with a CRM opportunity id
[**rebase_amendment**](OrdersApi.md#rebase_amendment) | **PUT** /orders/{orderId}/rebase | Mark order as executed
[**update_document_template**](OrdersApi.md#update_document_template) | **PUT** /templates/{id} | Update predefined terms
[**update_document_template_status**](OrdersApi.md#update_document_template_status) | **PUT** /templates/{id}/status/{status} | Update predefined terms status
[**update_order**](OrdersApi.md#update_order) | **PUT** /orders | Update order details
[**update_order_status**](OrdersApi.md#update_order_status) | **PUT** /orders/{id}/status/{status} | Update order status


# **add_document_template**
> String add_document_template(opts)

Add new predefined terms

Add a new predefined terms that can be attached to an order as part of PDF document generation.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

opts = { 
  body: SubskribeSandboxClient::DocumentTemplateJson.new # DocumentTemplateJson | 
}

begin
  #Add new predefined terms
  result = api_instance.add_document_template(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->add_document_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DocumentTemplateJson**](DocumentTemplateJson.md)|  | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_order**
> OrderJson add_order(body, opts)

Create an order

creates an order with the specified parameters. On success the order id is returned.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

body = SubskribeSandboxClient::OrderRequestJson.new # OrderRequestJson | json representing the order details

opts = { 
  is_dry_run: true, # BOOLEAN | indicates whether this order should be persisted
  populate_missing_lines: true # BOOLEAN | indicates whether an amendment should populate missing lines not provided here
}

begin
  #Create an order
  result = api_instance.add_order(body, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->add_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrderRequestJson**](OrderRequestJson.md)| json representing the order details | 
 **is_dry_run** | **BOOLEAN**| indicates whether this order should be persisted | [optional] 
 **populate_missing_lines** | **BOOLEAN**| indicates whether an amendment should populate missing lines not provided here | [optional] 

### Return type

[**OrderJson**](OrderJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_composite_order_document**
> create_composite_order_document(id)

Generate a composite order PDF

Generates a composite order form PDF. When completed this document can be downloaded via a get to /{id}/pdf.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the composite order


begin
  #Generate a composite order PDF
  api_instance.create_composite_order_document(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->create_composite_order_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the composite order | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_order_document**
> create_order_document(id, opts)

Generate an order PDF

Generates an order form PDF. When completed this document can be downloaded via a get to /{id}/pdf.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the order

opts = { 
  force: true # BOOLEAN | force regeneration of the PDF document even if there has been no changes. Defaults to false
}

begin
  #Generate an order PDF
  api_instance.create_order_document(id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->create_order_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the order | 
 **force** | **BOOLEAN**| force regeneration of the PDF document even if there has been no changes. Defaults to false | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_document_template**
> DocumentTemplateJson delete_document_template(id)

Delete predefined terms

Deletes the predefined terms specified.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | 


begin
  #Delete predefined terms
  result = api_instance.delete_document_template(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->delete_document_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DocumentTemplateJson**](DocumentTemplateJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_order**
> OrderJson delete_order(id)

Delete an order

Deletes the specified order

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the order


begin
  #Delete an order
  result = api_instance.delete_order(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->delete_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the order | 

### Return type

[**OrderJson**](OrderJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **execute_order**
> OrderJson execute_order(id, opts)

Mark order as executed

Marks the specified order as executed

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the order

opts = { 
  executed_on: 789 # Integer | Order execution time
}

begin
  #Mark order as executed
  result = api_instance.execute_order(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->execute_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the order | 
 **executed_on** | **Integer**| Order execution time | [optional] 

### Return type

[**OrderJson**](OrderJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **force_execute_order**
> OrderJson force_execute_order(id, opts)

Mark order as executed

Marks the specified order as executed

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the order

opts = { 
  executed_on: 789, # Integer | Order execution time
  skip_approval_check: true # BOOLEAN | Skip approval check for imported orders. Defaults to false
}

begin
  #Mark order as executed
  result = api_instance.force_execute_order(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->force_execute_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the order | 
 **executed_on** | **Integer**| Order execution time | [optional] 
 **skip_approval_check** | **BOOLEAN**| Skip approval check for imported orders. Defaults to false | [optional] 

### Return type

[**OrderJson**](OrderJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_composite_order_document**
> get_composite_order_document(id)

Fetch composite order form PDF

Downloads the order form PDF for the specified order. This PDF must have been generated via a POST to /{id}/pdf. The response is the PDF document.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the order


begin
  #Fetch composite order form PDF
  api_instance.get_composite_order_document(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_composite_order_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the order | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_document_template**
> DocumentTemplateJson get_document_template(id)

Get predefined terms detail

Returns a specific predefined terms by Id.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | 


begin
  #Get predefined terms detail
  result = api_instance.get_document_template(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_document_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DocumentTemplateJson**](DocumentTemplateJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_document_templates**
> DocumentTemplateJson get_document_templates(opts)

Get predefined terms

Returns predefined terms by type. These templates can be attached to orders as part of PDF document generation.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

opts = { 
  type: 'type_example' # String | 
}

begin
  #Get predefined terms
  result = api_instance.get_document_templates(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_document_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  | [optional] 

### Return type

[**DocumentTemplateJson**](DocumentTemplateJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_opportunities**
> OpportunityPaginationResponse get_opportunities(account_id, opts)

Return all opportunities

Returns all opportunities associated with the specified account. The results are paginated. To fetch all results, pass the cursor returned from a call to subsequent calls.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

account_id = 'account_id_example' # String | id of account

opts = { 
  cursor: 'cursor_example', # String | pass the cursor returned from a call to to subsequent calls until all values are fetched
  limit: 56, # Integer | number of results per page
  crm_id: 'crm_id_example' # String | CRM ID of the opportunity
}

begin
  #Return all opportunities
  result = api_instance.get_opportunities(account_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_opportunities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| id of account | 
 **cursor** | [**String**](.md)| pass the cursor returned from a call to to subsequent calls until all values are fetched | [optional] 
 **limit** | **Integer**| number of results per page | [optional] 
 **crm_id** | **String**| CRM ID of the opportunity | [optional] 

### Return type

[**OpportunityPaginationResponse**](OpportunityPaginationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_opportunity_by_crm_opportunity_id**
> OpportunityJson get_opportunity_by_crm_opportunity_id(id)

Return details of an opportunity

Returns the details of a specified opportunity

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the opportunity


begin
  #Return details of an opportunity
  result = api_instance.get_opportunity_by_crm_opportunity_id(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_opportunity_by_crm_opportunity_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the opportunity | 

### Return type

[**OpportunityJson**](OpportunityJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order**
> OrderJson get_order(id)

Get order details

Get the details of the specified order

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | order id


begin
  #Get order details
  result = api_instance.get_order(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_order: #{e}"
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

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_document1**
> get_order_document1(id)

Fetch order form PDF

Downloads the order form PDF for the specified order. This PDF must have been generated via a POST to /{id}/pdf. The response is the PDF document.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the order


begin
  #Fetch order form PDF
  api_instance.get_order_document1(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_order_document1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the order | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_document_doc**
> get_order_document_doc(id)

Download word doc version of order form

Download the order form as a Microsoft Word document. This document must have been generated via a POST to /{id}/pdf. The response is the Word Document.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the document


begin
  #Download word doc version of order form
  api_instance.get_order_document_doc(id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_order_document_doc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the document | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_line_metrics**
> Hash&lt;String, MetricsJson&gt; get_order_line_metrics(id)

Get order line metrics

Returns the metrics associated with an order's line items. This includes ARR, TCV, etc.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the order


begin
  #Get order line metrics
  result = api_instance.get_order_line_metrics(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_order_line_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the order | 

### Return type

[**Hash&lt;String, MetricsJson&gt;**](MetricsJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order_metrics**
> MetricsJson get_order_metrics(id, opts)

Get order metrics

Returns the metrics associated with an order. This includes ARR, TCV, etc.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the order

opts = { 
  target_date: 789 # Integer | date to generate metrics as of. Defaults to now.
}

begin
  #Get order metrics
  result = api_instance.get_order_metrics(id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_order_metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the order | 
 **target_date** | **Integer**| date to generate metrics as of. Defaults to now. | [optional] 

### Return type

[**MetricsJson**](MetricsJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_orders**
> OrderJsonPaginationResponse get_orders(opts)

Get all Orders

Gets all orders for your tenant. The results are paginated. To fetch all results, take the cursor returned from a call and pass it to subsequent calls.

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

api_instance = SubskribeSandboxClient::OrdersApi.new

opts = { 
  cursor: 'cursor_example', # String | cursor returned from previous call
  limit: 56 # Integer | number of results per page
}

begin
  #Get all Orders
  result = api_instance.get_orders(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | [**String**](.md)| cursor returned from previous call | [optional] 
 **limit** | **Integer**| number of results per page | [optional] 

### Return type

[**OrderJsonPaginationResponse**](OrderJsonPaginationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_orders_by_crm_opportunity_id**
> Array&lt;Object&gt; get_orders_by_crm_opportunity_id(id)

Return a list of orders associated with a CRM opportunity id

Returns the details of orders

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | crm id of the opportunity


begin
  #Return a list of orders associated with a CRM opportunity id
  result = api_instance.get_orders_by_crm_opportunity_id(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->get_orders_by_crm_opportunity_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| crm id of the opportunity | 

### Return type

**Array&lt;Object&gt;**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **rebase_amendment**
> OrderJson rebase_amendment(order_id)

Mark order as executed

Rebase the given amendment order onto the latest subscription version

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

api_instance = SubskribeSandboxClient::OrdersApi.new

order_id = 'order_id_example' # String | id of the order


begin
  #Mark order as executed
  result = api_instance.rebase_amendment(order_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->rebase_amendment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| id of the order | 

### Return type

[**OrderJson**](OrderJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_document_template**
> update_document_template(id, opts)

Update predefined terms

Updates a predefined terms

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::DocumentTemplateJson.new # DocumentTemplateJson | 
}

begin
  #Update predefined terms
  api_instance.update_document_template(id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->update_document_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**DocumentTemplateJson**](DocumentTemplateJson.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_document_template_status**
> update_document_template_status(id, status)

Update predefined terms status

Updates the status of a predefined terms

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the predefined terms

status = 'status_example' # String | new status to set


begin
  #Update predefined terms status
  api_instance.update_document_template_status(id, status)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->update_document_template_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the predefined terms | 
 **status** | **String**| new status to set | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_order**
> update_order(body, opts)

Update order details

Updates the details of the specified order

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

api_instance = SubskribeSandboxClient::OrdersApi.new

body = SubskribeSandboxClient::OrderRequestJson.new # OrderRequestJson | json representing the order details

opts = { 
  is_dry_run: true # BOOLEAN | true if the order should not be persisted
}

begin
  #Update order details
  api_instance.update_order(body, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->update_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrderRequestJson**](OrderRequestJson.md)| json representing the order details | 
 **is_dry_run** | **BOOLEAN**| true if the order should not be persisted | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_order_status**
> update_order_status(id, status, opts)

Update order status

Updates the status of the specified order to the specified value

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

api_instance = SubskribeSandboxClient::OrdersApi.new

id = 'id_example' # String | id of the order

status = 'status_example' # String | new status

opts = { 
  status_updated_on: 789 # Integer | Order status update time
}

begin
  #Update order status
  api_instance.update_order_status(id, status, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling OrdersApi->update_order_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the order | 
 **status** | **String**| new status | 
 **status_updated_on** | **Integer**| Order status update time | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



