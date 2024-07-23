# SubskribeSandboxClient::ReportsApi

All URIs are relative to *https://api.sandbox.subskribe.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate**](ReportsApi.md#generate) | **POST** /reports/generate | Generate a report
[**get_predefined_report_defs**](ReportsApi.md#get_predefined_report_defs) | **GET** /reports | Get report definitions
[**get_report_output**](ReportsApi.md#get_report_output) | **GET** /reports/{reportRunId}/result | Run a generated report
[**run**](ReportsApi.md#run) | **POST** /reports/run | Run a report


# **generate**
> ReportJobResponse generate(body)

Generate a report

Generates a report with the specified parameters. This report can later be downloaded via /reports/{reportRunId}/result

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

api_instance = SubskribeSandboxClient::ReportsApi.new

body = SubskribeSandboxClient::PredefinedReportJson.new # PredefinedReportJson | json definition of the report


begin
  #Generate a report
  result = api_instance.generate(body)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ReportsApi->generate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PredefinedReportJson**](PredefinedReportJson.md)| json definition of the report | 

### Return type

[**ReportJobResponse**](ReportJobResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_predefined_report_defs**
> PredefinedReportDefsJson get_predefined_report_defs

Get report definitions

Returns the definitions of the reports defined for your tenant.

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

api_instance = SubskribeSandboxClient::ReportsApi.new

begin
  #Get report definitions
  result = api_instance.get_predefined_report_defs
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ReportsApi->get_predefined_report_defs: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PredefinedReportDefsJson**](PredefinedReportDefsJson.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_report_output**
> get_report_output(report_run_id)

Run a generated report

Runs a report generated with /generate. On success a csv of the report is returned.

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

api_instance = SubskribeSandboxClient::ReportsApi.new

report_run_id = 'report_run_id_example' # String | id of the report


begin
  #Run a generated report
  api_instance.get_report_output(report_run_id)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ReportsApi->get_report_output: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_run_id** | **String**| id of the report | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json



# **run**
> run(body)

Run a report

Runs the specified report and returns the result as a csv.

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

api_instance = SubskribeSandboxClient::ReportsApi.new

body = SubskribeSandboxClient::PredefinedReportJson.new # PredefinedReportJson | definition of the report in json


begin
  #Run a report
  api_instance.run(body)
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling ReportsApi->run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PredefinedReportJson**](PredefinedReportJson.md)| definition of the report in json | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream, application/json



