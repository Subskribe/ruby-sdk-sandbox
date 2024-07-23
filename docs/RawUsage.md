# SubskribeSandboxClient::RawUsage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier for a particular usage record | [optional] 
**alias_id** | **String** | Alias ID for an usage based subscription item. This value is required if subscriptionId and subscriptionChargeId are not provided | [optional] 
**subscription_id** | **String** | SubscriptionId to attach usage record to. This value is required if aliasId is not provided | [optional] 
**charge_id** | **String** | ChargeId of an usage based charge to attach usage record to. This value is required if aliasId is not provided | [optional] 
**usage_time** | **Integer** | Usage time in unix timestamp (seconds) | [optional] 
**usage_quantity** | **Integer** |  | [optional] 
**attribute_references** | [**Array&lt;AttributeReference&gt;**](AttributeReference.md) | List of attribute references to derive the price for the usage record | [optional] 


