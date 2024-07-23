# SubskribeSandboxClient::AttachmentsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_attachment_to_account**](AttachmentsApi.md#add_attachment_to_account) | **POST** /attachments/account/{accountId} | Add an attachment
[**delete_attachment_from_account**](AttachmentsApi.md#delete_attachment_from_account) | **DELETE** /attachments/{attachmentId} | Delete an attachment
[**get_attachment**](AttachmentsApi.md#get_attachment) | **GET** /attachments/{attachmentId} | Get attachment contents
[**list_account_attachments**](AttachmentsApi.md#list_account_attachments) | **GET** /attachments/account/{accountId} | Get attachments for an account
[**modify_attachment**](AttachmentsApi.md#modify_attachment) | **PUT** /attachments | Update the details of an attachment


# **add_attachment_to_account**
> Attachment add_attachment_to_account(account_id, opts)

Add an attachment

Attaches a document to the specified account. The post body should contain the body of the document that is to be attached. On success the Id of the attachment is returned.

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

api_instance = SubskribeSandboxClient::AttachmentsApi.new

account_id = 'account_id_example' # String | id of the account to attach the document to

opts = { 
  file: File.new('/path/to/file.txt'), # File | 
  file_name: 'file_name_example', # String | name to associate with the attachment
  description: 'description_example', # String | description of the document
  size: 789, # Integer | size in bytes of the document
  tag: 'tag_example' # String | tag to apply to the attachment
}

begin
  #Add an attachment
  result = api_instance.add_attachment_to_account(account_id, opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AttachmentsApi->add_attachment_to_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| id of the account to attach the document to | 
 **file** | **File**|  | [optional] 
 **file_name** | **String**| name to associate with the attachment | [optional] 
 **description** | **String**| description of the document | [optional] 
 **size** | **Integer**| size in bytes of the document | [optional] 
 **tag** | **String**| tag to apply to the attachment | [optional] 

### Return type

[**Attachment**](Attachment.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **delete_attachment_from_account**
> delete_attachment_from_account(attachment_id)

Delete an attachment

Unattaches and deletes the specified document

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

api_instance = SubskribeSandboxClient::AttachmentsApi.new

attachment_id = 'attachment_id_example' # String | id of the attachment


begin
  #Delete an attachment
  api_instance.delete_attachment_from_account(attachment_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AttachmentsApi->delete_attachment_from_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | [**String**](.md)| id of the attachment | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_attachment**
> get_attachment(attachment_id)

Get attachment contents

Gets the contents of the specified attachment

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

api_instance = SubskribeSandboxClient::AttachmentsApi.new

attachment_id = 'attachment_id_example' # String | id of the attachment


begin
  #Get attachment contents
  api_instance.get_attachment(attachment_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AttachmentsApi->get_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | [**String**](.md)| id of the attachment | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **list_account_attachments**
> Array&lt;Attachment&gt; list_account_attachments(account_id)

Get attachments for an account

Lists all the documents attached to an account

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

api_instance = SubskribeSandboxClient::AttachmentsApi.new

account_id = 'account_id_example' # String | id of the attachment


begin
  #Get attachments for an account
  result = api_instance.list_account_attachments(account_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AttachmentsApi->list_account_attachments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| id of the attachment | 

### Return type

[**Array&lt;Attachment&gt;**](Attachment.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **modify_attachment**
> Attachment modify_attachment(opts)

Update the details of an attachment

Updates the details of the specified document

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

api_instance = SubskribeSandboxClient::AttachmentsApi.new

opts = { 
  body: SubskribeSandboxClient::Attachment.new # Attachment | json representing the attachment
}

begin
  #Update the details of an attachment
  result = api_instance.modify_attachment(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling AttachmentsApi->modify_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Attachment**](Attachment.md)| json representing the attachment | [optional] 

### Return type

[**Attachment**](Attachment.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



