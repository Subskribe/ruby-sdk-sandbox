# SubskribeSandboxClient::SubscriptionJson

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**version** | **Integer** |  | 
**entity_id** | **String** |  | 
**external_id** | **String** |  | [optional] 
**account_id** | **String** |  | 
**shipping_contact_id** | **String** |  | [optional] 
**billing_contact_id** | **String** |  | [optional] 
**state** | **String** |  | 
**start_date** | **Integer** |  | 
**end_date** | **Integer** |  | 
**canceled_date** | **Integer** |  | [optional] 
**term_length** | [**RecurrenceJson**](RecurrenceJson.md) |  | 
**billing_cycle** | [**RecurrenceJson**](RecurrenceJson.md) |  | 
**payment_term** | **String** |  | [optional] 
**billing_term** | **String** |  | [optional] 
**charges** | [**Array&lt;SubscriptionChargeJson&gt;**](SubscriptionChargeJson.md) |  | 
**predefined_discounts** | [**Array&lt;TenantDiscountJson&gt;**](TenantDiscountJson.md) |  | [optional] 
**orders** | **Array&lt;String&gt;** |  | 
**purchase_orders** | [**Array&lt;PurchaseOrder&gt;**](PurchaseOrder.md) |  | [optional] 
**purchase_order_required_for_invoicing** | **BOOLEAN** |  | [optional] 
**creation_time** | **Integer** |  | 
**ramp_interval** | **Array&lt;Integer&gt;** |  | [optional] 
**renewed_from_subscription_id** | **String** |  | [optional] 
**renewed_from_date** | **Integer** |  | [optional] 
**renewed_to_subscription_id** | **String** |  | [optional] 
**renewed_to_date** | **Integer** |  | [optional] 
**restructured_from_subscription_id** | **String** |  | [optional] 
**restructured_from_date** | **Integer** |  | [optional] 
**restructured_to_subscription_id** | **String** |  | [optional] 
**restructured_to_date** | **Integer** |  | [optional] 
**auto_renew** | **BOOLEAN** |  | [optional] 
**activation_date** | **Integer** |  | [optional] 
**name** | **String** |  | [optional] 


