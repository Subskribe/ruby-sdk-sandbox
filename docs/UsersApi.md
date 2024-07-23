# SubskribeSandboxClient::UsersApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accept_terms_for_current_user**](UsersApi.md#accept_terms_for_current_user) | **POST** /users/terms-and-conditions | Accept terms and conditions
[**add_user**](UsersApi.md#add_user) | **POST** /users | Add a new user
[**add_user_group**](UsersApi.md#add_user_group) | **POST** /userGroups | Add user group
[**delete_user_group**](UsersApi.md#delete_user_group) | **DELETE** /userGroups/{userGroupId} | Delete user group
[**disable_user**](UsersApi.md#disable_user) | **PUT** /users/disable/{id} | Disable user
[**enable_user**](UsersApi.md#enable_user) | **PUT** /users/enable/{id} | Enable user
[**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | Get user by Id
[**get_user_group**](UsersApi.md#get_user_group) | **GET** /userGroups/{userGroupId} | Get user group
[**get_user_groups**](UsersApi.md#get_user_groups) | **GET** /userGroups | Get user groups
[**get_users**](UsersApi.md#get_users) | **GET** /users | Get users list
[**resend_email_for_existing_user**](UsersApi.md#resend_email_for_existing_user) | **POST** /users/resend-email/{email} | Resend welcome email
[**update_user**](UsersApi.md#update_user) | **PUT** /users/{id} | Update user
[**update_user_group**](UsersApi.md#update_user_group) | **PUT** /userGroups | Update user group
[**upload_csv**](UsersApi.md#upload_csv) | **POST** /users/upload | Bulk user upload


# **accept_terms_for_current_user**
> accept_terms_for_current_user

Accept terms and conditions

Before a user gains access to the application, they must accept Subskribe's terms and conditions. This operation requires user bound access tokens.

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

api_instance = SubskribeSandboxClient::UsersApi.new

begin
  #Accept terms and conditions
  api_instance.accept_terms_for_current_user
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->accept_terms_for_current_user: #{e}"
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



# **add_user**
> String add_user(opts)

Add a new user

Add a new user to the system. Users in the system must have unique emails. If successful, the path to the new user object is returned and a welcome email containing a temporary password will be sent to the email associated with the user. The login credentials expires in 24 hours. If the user does not login to the system within that time, a new invitation is required.

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

api_instance = SubskribeSandboxClient::UsersApi.new

opts = { 
  body: SubskribeSandboxClient::UserInput.new # UserInput | 
}

begin
  #Add a new user
  result = api_instance.add_user(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->add_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserInput**](UserInput.md)|  | [optional] 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_user_group**
> UserGroupJson add_user_group(opts)

Add user group

Create a new user group based on the parameters in the input

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

api_instance = SubskribeSandboxClient::UsersApi.new

opts = { 
  body: SubskribeSandboxClient::UserGroupRequestJson.new # UserGroupRequestJson | 
}

begin
  #Add user group
  result = api_instance.add_user_group(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->add_user_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserGroupRequestJson**](UserGroupRequestJson.md)|  | [optional] 

### Return type

[**UserGroupJson**](UserGroupJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_user_group**
> UserGroupJson delete_user_group(user_group_id)

Delete user group

Delete the user group by Id

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

api_instance = SubskribeSandboxClient::UsersApi.new

user_group_id = 'user_group_id_example' # String | 


begin
  #Delete user group
  result = api_instance.delete_user_group(user_group_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **String**|  | 

### Return type

[**UserGroupJson**](UserGroupJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_user**
> UserJson disable_user(id)

Disable user

Disables a user by Id. If successful, returns the user just disabled

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

api_instance = SubskribeSandboxClient::UsersApi.new

id = 'id_example' # String | 


begin
  #Disable user
  result = api_instance.disable_user(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->disable_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserJson**](UserJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_user**
> UserJson enable_user(id)

Enable user

Enables a user by Id. If successful, returns the user just enabled

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

api_instance = SubskribeSandboxClient::UsersApi.new

id = 'id_example' # String | 


begin
  #Enable user
  result = api_instance.enable_user(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->enable_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserJson**](UserJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user**
> UserJson get_user(id)

Get user by Id

Returns a specific user by Id

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

api_instance = SubskribeSandboxClient::UsersApi.new

id = 'id_example' # String | 


begin
  #Get user by Id
  result = api_instance.get_user(id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserJson**](UserJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_group**
> UserGroupJson get_user_group(user_group_id)

Get user group

Retrieve a user group by Id

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

api_instance = SubskribeSandboxClient::UsersApi.new

user_group_id = 'user_group_id_example' # String | 


begin
  #Get user group
  result = api_instance.get_user_group(user_group_id)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **String**|  | 

### Return type

[**UserGroupJson**](UserGroupJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_groups**
> Array&lt;UserGroupJson&gt; get_user_groups

Get user groups

Get all available user groups

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

api_instance = SubskribeSandboxClient::UsersApi.new

begin
  #Get user groups
  result = api_instance.get_user_groups
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_groups: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;UserGroupJson&gt;**](UserGroupJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users**
> UserPaginationResponseJson get_users(opts)

Get users list

Returns a paginated list of users

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

api_instance = SubskribeSandboxClient::UsersApi.new

opts = { 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  #Get users list
  result = api_instance.get_users(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | [**String**](.md)|  | [optional] 
 **limit** | **Integer**|  | [optional] 

### Return type

[**UserPaginationResponseJson**](UserPaginationResponseJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **resend_email_for_existing_user**
> String resend_email_for_existing_user(email)

Resend welcome email

Resend welcome email conditioning temporary credentials. This is required if the user does not register within 24 hours of user activation

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

api_instance = SubskribeSandboxClient::UsersApi.new

email = 'email_example' # String | 


begin
  #Resend welcome email
  result = api_instance.resend_email_for_existing_user(email)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->resend_email_for_existing_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_user**
> update_user(id, opts)

Update user

Updates the user information. Email cannot be updated.

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

api_instance = SubskribeSandboxClient::UsersApi.new

id = 'id_example' # String | 

opts = { 
  body: SubskribeSandboxClient::UserInput.new # UserInput | 
}

begin
  #Update user
  api_instance.update_user(id, opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**UserInput**](UserInput.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_group**
> UserGroupJson update_user_group(opts)

Update user group

Updates the specified user group according to the input

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

api_instance = SubskribeSandboxClient::UsersApi.new

opts = { 
  body: SubskribeSandboxClient::UserGroupRequestJson.new # UserGroupRequestJson | 
}

begin
  #Update user group
  result = api_instance.update_user_group(opts)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->update_user_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserGroupRequestJson**](UserGroupRequestJson.md)|  | [optional] 

### Return type

[**UserGroupJson**](UserGroupJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload_csv**
> upload_csv(opts)

Bulk user upload

Loads a list of users to be added to in CSV format.

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

api_instance = SubskribeSandboxClient::UsersApi.new

opts = { 
  body: SubskribeSandboxClient::InputStream.new # InputStream | 
}

begin
  #Bulk user upload
  api_instance.upload_csv(opts)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling UsersApi->upload_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InputStream**](InputStream.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: text/csv
 - **Accept**: application/json



