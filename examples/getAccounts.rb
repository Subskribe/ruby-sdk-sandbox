require 'subskribe_sandbox'

SubskribeSandboxClient.configure do |config|
  config.api_key['X-API-Key'] = ENV["API_KEY"]
end

api_instance = SubskribeSandboxClient::AccountsApi.new

opts = {
  cursor: '',
  type: 'ALL',
  limit: 5
}

begin
  result = api_instance.get_accounts(opts)
  result.data.each { |item|
    puts "#{item.id}: #{item.name}"
  }
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling API:"
  puts "HTTP #{e.code}: #{e.response_body}"
end
