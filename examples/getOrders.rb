require 'subskribe_sandbox'

SubskribeSandboxClient.configure do |config|
  config.api_key['X-API-Key'] = ENV["API_KEY"]
end

api_instance = SubskribeSandboxClient::OrdersApi.new

opts = {
  cursor: '',
  limit: 5
}

begin
  result = api_instance.get_orders(opts)
  result.data.each { |item|
    puts "#{item.id}: #{item.name} (#{item.currency} #{item.total_amount})"
  }
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling API:"
  puts "HTTP #{e.code}: #{e.response_body}"
end
