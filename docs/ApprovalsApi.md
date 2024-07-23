# SubskribeSandboxClient::ApprovalsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_approval_role**](ApprovalsApi.md#add_approval_role) | **POST** /approvalRoles | Add an approval role
[**add_approval_segment**](ApprovalsApi.md#add_approval_segment) | **POST** /approvalSegments | Add an approval segment
[**delete_approval_role**](ApprovalsApi.md#delete_approval_role) | **DELETE** /approvalRoles/{approvalRoleId} | Delete an approval role
[**delete_approval_segment**](ApprovalsApi.md#delete_approval_segment) | **DELETE** /approvalSegments/{approvalSegmentId} | Delete a segment
[**fetch_notification**](ApprovalsApi.md#fetch_notification) | **GET** /approvalFlowNotifications | make ngrok happy
[**get_all_import_details**](ApprovalsApi.md#get_all_import_details) | **GET** /approvalMatrix/csv | Get approval matrix details
[**get_approval_matrix_as_csv**](ApprovalsApi.md#get_approval_matrix_as_csv) | **GET** /approvalMatrix/csv/download | Download approval matrix
[**get_approval_role_by_id**](ApprovalsApi.md#get_approval_role_by_id) | **GET** /approvalRoles/{approvalRoleId} | Get Details of an approval role
[**get_approval_roles**](ApprovalsApi.md#get_approval_roles) | **GET** /approvalRoles | Get approval roles
[**get_approval_segment_by_id**](ApprovalsApi.md#get_approval_segment_by_id) | **GET** /approvalSegments/{approvalSegmentId} | Get approval segment details
[**get_approval_segments**](ApprovalsApi.md#get_approval_segments) | **GET** /approvalSegments | Get approval segments
[**get_import_details_by_id**](ApprovalsApi.md#get_import_details_by_id) | **GET** /approvalMatrix/csv/{importId} | Get import details
[**get_import_preview**](ApprovalsApi.md#get_import_preview) | **GET** /approvalMatrix/csv/{importId}/preview | Preview import changes
[**get_import_result**](ApprovalsApi.md#get_import_result) | **GET** /approvalMatrix/csv/{importId}/download | Download the csv for an import
[**receive_approval_flow_notification**](ApprovalsApi.md#receive_approval_flow_notification) | **POST** /approvalFlowNotifications | Receive approval flow notification
[**submit_approval_matrix_csv**](ApprovalsApi.md#submit_approval_matrix_csv) | **POST** /approvalMatrix/csv/{importId}/submit | Finalize an import
[**update_approval_role**](ApprovalsApi.md#update_approval_role) | **PUT** /approvalRoles/{approvalRoleId} | Update an approval role
[**update_approval_segment**](ApprovalsApi.md#update_approval_segment) | **PUT** /approvalSegments/{approvalSegmentId} | Update an approval segment
[**upload_approval_matrix_csv**](ApprovalsApi.md#upload_approval_matrix_csv) | **POST** /approvalMatrix/csv | Upload an Approval Matrix


# **add_approval_role**
> String add_approval_role(opts)

Add an approval role

Adds an approval role to the order execution hierarchy and returns its ID

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

opts = { 
  body: SubskribeSandboxClient::ApprovalRoleJson.new # ApprovalRoleJson | Json representation of the role
}

begin
  #Add an approval role
  result = api_instance.add_approval_role(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->add_approval_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApprovalRoleJson**](ApprovalRoleJson.md)| Json representation of the role | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_approval_segment**
> String add_approval_segment(opts)

Add an approval segment

Define and add an approval segment which can be later specified in an approval matrix. The ID of the segment is returned.

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

opts = { 
  body: SubskribeSandboxClient::ApprovalSegmentJson.new # ApprovalSegmentJson | json representing the segment
}

begin
  #Add an approval segment
  result = api_instance.add_approval_segment(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->add_approval_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApprovalSegmentJson**](ApprovalSegmentJson.md)| json representing the segment | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_approval_role**
> ApprovalRoleJson delete_approval_role(approval_role_id)

Delete an approval role

Deletes an approval role

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

approval_role_id = 'approval_role_id_example' # String | 


begin
  #Delete an approval role
  result = api_instance.delete_approval_role(approval_role_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->delete_approval_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approval_role_id** | **String**|  | 

### Return type

[**ApprovalRoleJson**](ApprovalRoleJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_approval_segment**
> ApprovalSegmentJson delete_approval_segment(approval_segment_id)

Delete a segment

Deletes the segment specified by the id

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

approval_segment_id = 'approval_segment_id_example' # String | id of the segment


begin
  #Delete a segment
  result = api_instance.delete_approval_segment(approval_segment_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->delete_approval_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approval_segment_id** | **String**| id of the segment | 

### Return type

[**ApprovalSegmentJson**](ApprovalSegmentJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_notification**
> fetch_notification

make ngrok happy



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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

begin
  #make ngrok happy
  api_instance.fetch_notification
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->fetch_notification: #{e}"
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



# **get_all_import_details**
> Array&lt;ApprovalMatrixImportDataJson&gt; get_all_import_details

Get approval matrix details

Returns details regarding the approval matrices that have been uploaded

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

begin
  #Get approval matrix details
  result = api_instance.get_all_import_details
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->get_all_import_details: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ApprovalMatrixImportDataJson&gt;**](ApprovalMatrixImportDataJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_approval_matrix_as_csv**
> get_approval_matrix_as_csv

Download approval matrix

Downloads your order approval matrix as a csv

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

begin
  #Download approval matrix
  api_instance.get_approval_matrix_as_csv
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->get_approval_matrix_as_csv: #{e}"
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



# **get_approval_role_by_id**
> ApprovalRoleJson get_approval_role_by_id(approval_role_id)

Get Details of an approval role

Returns the details of the specified approval role

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

approval_role_id = 'approval_role_id_example' # String | id of the approval role


begin
  #Get Details of an approval role
  result = api_instance.get_approval_role_by_id(approval_role_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->get_approval_role_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approval_role_id** | **String**| id of the approval role | 

### Return type

[**ApprovalRoleJson**](ApprovalRoleJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_approval_roles**
> Array&lt;ApprovalRoleJson&gt; get_approval_roles

Get approval roles

Gets all approval roles

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

begin
  #Get approval roles
  result = api_instance.get_approval_roles
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->get_approval_roles: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ApprovalRoleJson&gt;**](ApprovalRoleJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_approval_segment_by_id**
> ApprovalSegmentJson get_approval_segment_by_id(approval_segment_id)

Get approval segment details

Gets the details of the specified approval segment

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

approval_segment_id = 'approval_segment_id_example' # String | id of the segment


begin
  #Get approval segment details
  result = api_instance.get_approval_segment_by_id(approval_segment_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->get_approval_segment_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approval_segment_id** | **String**| id of the segment | 

### Return type

[**ApprovalSegmentJson**](ApprovalSegmentJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_approval_segments**
> Array&lt;ApprovalSegmentJson&gt; get_approval_segments

Get approval segments

Get all approval segments

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

begin
  #Get approval segments
  result = api_instance.get_approval_segments
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->get_approval_segments: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ApprovalSegmentJson&gt;**](ApprovalSegmentJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_import_details_by_id**
> ApprovalMatrixImportDataJson get_import_details_by_id(import_id)

Get import details

Gets the details of an import specified by the passed ID

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

import_id = 'import_id_example' # String | 


begin
  #Get import details
  result = api_instance.get_import_details_by_id(import_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->get_import_details_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_id** | **String**|  | 

### Return type

[**ApprovalMatrixImportDataJson**](ApprovalMatrixImportDataJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_import_preview**
> ApprovalMatrixImportPreview get_import_preview(import_id)

Preview import changes

Preview the changes that a specified approval matrix import will have once applied

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

import_id = 'import_id_example' # String | 


begin
  #Preview import changes
  result = api_instance.get_import_preview(import_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->get_import_preview: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_id** | **String**|  | 

### Return type

[**ApprovalMatrixImportPreview**](ApprovalMatrixImportPreview.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_import_result**
> get_import_result(import_id)

Download the csv for an import

Downloads the CSV for an import activity specified by the passed ID

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

import_id = 'import_id_example' # String | 


begin
  #Download the csv for an import
  api_instance.get_import_result(import_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->get_import_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **receive_approval_flow_notification**
> receive_approval_flow_notification(opts)

Receive approval flow notification



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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

opts = { 
  body: 'body_example' # String | 
}

begin
  #Receive approval flow notification
  api_instance.receive_approval_flow_notification(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->receive_approval_flow_notification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **submit_approval_matrix_csv**
> submit_approval_matrix_csv(import_id)

Finalize an import

Submit and finalize the import for the specified import operation.

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

import_id = 'import_id_example' # String | 


begin
  #Finalize an import
  api_instance.submit_approval_matrix_csv(import_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->submit_approval_matrix_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_approval_role**
> update_approval_role(approval_role_id, opts)

Update an approval role

Updates the details of the specified approval role

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

approval_role_id = 'approval_role_id_example' # String | id of the role

opts = { 
  body: SubskribeSandboxClient::ApprovalRoleJson.new # ApprovalRoleJson | json representing the role details
}

begin
  #Update an approval role
  api_instance.update_approval_role(approval_role_id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->update_approval_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approval_role_id** | **String**| id of the role | 
 **body** | [**ApprovalRoleJson**](ApprovalRoleJson.md)| json representing the role details | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_approval_segment**
> update_approval_segment(approval_segment_id, opts)

Update an approval segment

Update the details of the specified approval segment

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

approval_segment_id = 'approval_segment_id_example' # String | id of the segment

opts = { 
  body: SubskribeSandboxClient::ApprovalSegmentJson.new # ApprovalSegmentJson | json representing the segment details
}

begin
  #Update an approval segment
  api_instance.update_approval_segment(approval_segment_id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->update_approval_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approval_segment_id** | **String**| id of the segment | 
 **body** | [**ApprovalSegmentJson**](ApprovalSegmentJson.md)| json representing the segment details | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload_approval_matrix_csv**
> ApprovalMatrixImportDataJson upload_approval_matrix_csv(opts)

Upload an Approval Matrix

Upload a csv containing the order approval matrix to be used on order execution. The csv should have the following format:  Segment, ApprovalRoleName1, ApprovalRoleName2 ... SegmentName1, UserEmailOrGroupName1, UserEmailOrGroupName2 ... Roles, userEmails, userGroups are expected to be added before putting them in this csv. Any new segment names defined here will add a new segment. If a segment isn't added, it shall be deleted.

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

api_instance = SubskribeSandboxClient::ApprovalsApi.new

opts = { 
  file: File.new('/path/to/file.txt') # File | 
}

begin
  #Upload an Approval Matrix
  result = api_instance.upload_approval_matrix_csv(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ApprovalsApi->upload_approval_matrix_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  | [optional] 

### Return type

[**ApprovalMatrixImportDataJson**](ApprovalMatrixImportDataJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



