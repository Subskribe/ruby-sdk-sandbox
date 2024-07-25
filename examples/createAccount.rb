require 'subskribe_sandbox'

SubskribeSandboxClient.configure do |config|
  config.api_key['X-API-Key'] = ENV["API_KEY"]
end

api_instance = SubskribeSandboxClient::AccountsApi.new

# create a new account object
account = SubskribeSandboxClient::AccountJson.new
account.name = "Aviato"
account.description = "Extremely innvoative company."
account.phone_number = "123-456-7890"
account.timezone = "America/Los_Angeles"

# create account in Subskribe
begin
  result = api_instance.add_account({  body: account })
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling API:"
  puts "HTTP #{e.code}: #{e.response_body}"
end
