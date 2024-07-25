require 'subskribe_sandbox'

SubskribeSandboxClient.configure do |config|
  config.api_key['X-API-Key'] = ENV["API_KEY"]
end

api_instance = SubskribeSandboxClient::AccountsApi.new

begin
  api_instance.delete_account("ACCT-1234567")
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling API:"
  puts "HTTP #{e.code}: #{e.response_body}"
end
