require 'subskribe_sandbox'

SubskribeSandboxClient.configure do |config|
  config.api_key['X-API-Key'] = ENV["API_KEY"]
end

api_instance = SubskribeSandboxClient::OrdersApi.new

# create a new order object
order = SubskribeSandboxClient::OrderRequestJson.new
order.name = "My Order 1"
order.account_id = "ACCT-1234567"
order.order_type = "NEW"
order.start_date = 1704047400
order.term_length = SubskribeSandboxClient::RecurrenceJson.new
order.term_length.step = 1
order.term_length.cycle = "YEAR"
order.billing_cycle = SubskribeSandboxClient::RecurrenceJson.new
order.billing_cycle.step = 1
order.billing_cycle.cycle = "MONTH"
order.billing_term = "UP_FRONT"
order.payment_term = "NET30"

# add order line items
order_line_item = SubskribeSandboxClient::OrderLineItemRequestJson.new
order_line_item.charge_id = "CHRG-1234567"
order_line_item.plan_id = "PLAN-1234567"
order_line_item.quantity = 20

order.line_items = [order_line_item]

# create order in Subskribe
begin
  result = api_instance.add_order(order)
  p result
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling API:"
  puts "HTTP #{e.code}: #{e.response_body}"
end
