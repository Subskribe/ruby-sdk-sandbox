require 'subskribe_sandbox'

SubskribeSandboxClient.configure do |config|
  config.api_key['X-API-Key'] = ENV["API_KEY"]
end

api_instance = SubskribeSandboxClient::SubscriptionsApi.new

opts = {
  cursor: '',
  limit: 5
}

begin
  result = api_instance.get_subscriptions(opts)
  result.data.each { |item|
    start_date = item.start_date # unix timestamp
    parsed_start_date = Time.at(start_date).to_datetime
    puts "#{item.id} #{item.account_id} #{parsed_start_date} #{item.state}"
  }
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling API:"
  puts "HTTP #{e.code}: #{e.response_body}"
end
