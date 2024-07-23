# SubskribeSandboxClient::OrderRequestJson

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**external_id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**account_id** | **String** |  | [optional] 
**order_type** | **String** |  | 
**payment_term** | **String** |  | [optional] 
**subscription_id** | **String** |  | [optional] 
**shipping_contact_id** | **String** |  | [optional] 
**billing_contact_id** | **String** |  | [optional] 
**predefined_discounts** | [**Array&lt;TenantDiscountJson&gt;**](TenantDiscountJson.md) |  | [optional] 
**line_items** | [**Array&lt;OrderLineItemRequestJson&gt;**](OrderLineItemRequestJson.md) |  | [optional] 
**start_date** | **Integer** |  | 
**end_date** | **Integer** |  | [optional] 
**executed_on** | **Integer** |  | [optional] 
**term_length** | [**RecurrenceJson**](RecurrenceJson.md) |  | [optional] 
**billing_cycle** | [**RecurrenceJson**](RecurrenceJson.md) |  | [optional] 
**billing_term** | **String** |  | [optional] 
**billing_anchor_date** | **Integer** |  | [optional] 
**ramp_interval** | **Array&lt;Integer&gt;** |  | [optional] 
**order_form_template_ids** | **Array&lt;String&gt;** |  | [optional] 
**sfdc_opportunity_id** | **String** |  | [optional] 
**is_primary_order_for_sfdc_opportunity** | **BOOLEAN** |  | [optional] 
**sfdc_opportunity_name** | **String** |  | [optional] 
**sfdc_opportunity_type** | **String** |  | [optional] 
**sfdc_opportunity_stage** | **String** |  | [optional] 
**opportunity_crm_type** | **String** |  | [optional] 
**owner_id** | **String** |  | [optional] 
**renewal_for_subscription_id** | **String** |  | [optional] 
**document_master_template_id** | **String** |  | [optional] 
**document_custom_content** | [**DocumentCustomContent**](DocumentCustomContent.md) |  | [optional] 
**purchase_order_number** | **String** |  | [optional] 
**purchase_order_required_for_invoicing** | **BOOLEAN** |  | [optional] 
**auto_renew** | **BOOLEAN** |  | [optional] 
**approval_segment_id** | **String** |  | [optional] 
**attachment_id** | **String** |  | [optional] 
**expires_on** | **Integer** |  | [optional] 
**entity_id** | **String** |  | [optional] 
**custom_fields** | [**Array&lt;CustomFieldEntry&gt;**](CustomFieldEntry.md) |  | [optional] 
**start_date_type** | **String** |  | [optional] 


