# Subskribe Sandbox Ruby Gem

Ruby Gem to connect to Subskribe sandbox envinronment

### Using Gem

1. Install gem from rubygems.org

```shell
gem install subskribe_dev
```

2. In your ruby project's Gemfile, add below line to include gem:

```
gem 'subskribe_sandbox', '~> 1.0.0'
```

3. Create `example.rb` file with below example

```ruby
# load the gem
require 'subskribe_sandbox'
SubskribeSandboxClient.configure do |config|
  config.api_key['X-API-Key'] = 'YOUR API KEY'
end

api_instance = SubskribeSandboxClient::SettingsApi.new

begin
  api_instance.get_supported_currencies
rescue SubskribeSandboxClient::ApiError => e
  puts "Exception when calling SettingsApi->get_supported_currencies: #{e}"
end
```

4. Update the `YOUR API KEY` with your actual API key, obtained from https://sandbox.subskribe.net/settings/api-key

5. Run the code:

```
ruby example.rb
```

You should see the list of currencies supported in your sandbox! 🎉

### Documentation

All URIs are relative to *https://api.sandbox.subskribe.net*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SubskribeSandboxClient::AccountingApi* | [**get_accounting_events**](docs/AccountingApi.md#get_accounting_events) | **GET** /accounting/journalEntry/events | Get accounting events for the specified dates
*SubskribeSandboxClient::AccountingApi* | [**get_journal_entries**](docs/AccountingApi.md#get_journal_entries) | **GET** /accounting/journalEntry | Return Journal Entries for period
*SubskribeSandboxClient::AccountingApi* | [**specify_current_accounting_period**](docs/AccountingApi.md#specify_current_accounting_period) | **POST** /accountingPeriods | Specify the current accounting period
*SubskribeSandboxClient::AccountsApi* | [**add_account**](docs/AccountsApi.md#add_account) | **POST** /accounts | Add a new account
*SubskribeSandboxClient::AccountsApi* | [**add_account_contact**](docs/AccountsApi.md#add_account_contact) | **POST** /accounts/{accountId}/contacts | Add a contact for an account
*SubskribeSandboxClient::AccountsApi* | [**add_account_payment_method**](docs/AccountsApi.md#add_account_payment_method) | **POST** /accounts/{accountId}/paymentMethods | Add a payment method to an account
*SubskribeSandboxClient::AccountsApi* | [**delete_account**](docs/AccountsApi.md#delete_account) | **DELETE** /accounts/{id} | Delete an account
*SubskribeSandboxClient::AccountsApi* | [**delete_account_contact**](docs/AccountsApi.md#delete_account_contact) | **DELETE** /accounts/{accountId}/contacts/{contactId} | Delete a contact
*SubskribeSandboxClient::AccountsApi* | [**get_account**](docs/AccountsApi.md#get_account) | **GET** /accounts/{id} | Get an account by id
*SubskribeSandboxClient::AccountsApi* | [**get_account_contact**](docs/AccountsApi.md#get_account_contact) | **GET** /accounts/{accountId}/contacts/{contactId} | Gets contact details
*SubskribeSandboxClient::AccountsApi* | [**get_account_contacts**](docs/AccountsApi.md#get_account_contacts) | **GET** /accounts/{accountId}/contacts | Get contacts for an account
*SubskribeSandboxClient::AccountsApi* | [**get_account_metrics**](docs/AccountsApi.md#get_account_metrics) | **GET** /accounts/{id}/metrics | Returns metrics for the specified account
*SubskribeSandboxClient::AccountsApi* | [**get_account_payment_methods**](docs/AccountsApi.md#get_account_payment_methods) | **GET** /accounts/{accountId}/paymentMethods | Get the payment methods for an account
*SubskribeSandboxClient::AccountsApi* | [**get_accounts**](docs/AccountsApi.md#get_accounts) | **GET** /accounts | Get all accounts
*SubskribeSandboxClient::AccountsApi* | [**get_payment_method**](docs/AccountsApi.md#get_payment_method) | **GET** /accounts/{accountId}/paymentMethods/{id} | Get the details of a payment method
*SubskribeSandboxClient::AccountsApi* | [**import_crm_account**](docs/AccountsApi.md#import_crm_account) | **POST** /accounts/crm/import | Import an account from a CRM
*SubskribeSandboxClient::AccountsApi* | [**update_account**](docs/AccountsApi.md#update_account) | **PUT** /accounts/{id} | Update an account
*SubskribeSandboxClient::AccountsApi* | [**update_account_contact**](docs/AccountsApi.md#update_account_contact) | **PUT** /accounts/{accountId}/contacts/{contactId} | Update a contact
*SubskribeSandboxClient::ApprovalsApi* | [**add_approval_role**](docs/ApprovalsApi.md#add_approval_role) | **POST** /approvalRoles | Add an approval role
*SubskribeSandboxClient::ApprovalsApi* | [**add_approval_segment**](docs/ApprovalsApi.md#add_approval_segment) | **POST** /approvalSegments | Add an approval segment
*SubskribeSandboxClient::ApprovalsApi* | [**delete_approval_role**](docs/ApprovalsApi.md#delete_approval_role) | **DELETE** /approvalRoles/{approvalRoleId} | Delete an approval role
*SubskribeSandboxClient::ApprovalsApi* | [**delete_approval_segment**](docs/ApprovalsApi.md#delete_approval_segment) | **DELETE** /approvalSegments/{approvalSegmentId} | Delete a segment
*SubskribeSandboxClient::ApprovalsApi* | [**fetch_notification**](docs/ApprovalsApi.md#fetch_notification) | **GET** /approvalFlowNotifications | make ngrok happy
*SubskribeSandboxClient::ApprovalsApi* | [**get_all_import_details**](docs/ApprovalsApi.md#get_all_import_details) | **GET** /approvalMatrix/csv | Get approval matrix details
*SubskribeSandboxClient::ApprovalsApi* | [**get_approval_matrix_as_csv**](docs/ApprovalsApi.md#get_approval_matrix_as_csv) | **GET** /approvalMatrix/csv/download | Download approval matrix
*SubskribeSandboxClient::ApprovalsApi* | [**get_approval_role_by_id**](docs/ApprovalsApi.md#get_approval_role_by_id) | **GET** /approvalRoles/{approvalRoleId} | Get Details of an approval role
*SubskribeSandboxClient::ApprovalsApi* | [**get_approval_roles**](docs/ApprovalsApi.md#get_approval_roles) | **GET** /approvalRoles | Get approval roles
*SubskribeSandboxClient::ApprovalsApi* | [**get_approval_segment_by_id**](docs/ApprovalsApi.md#get_approval_segment_by_id) | **GET** /approvalSegments/{approvalSegmentId} | Get approval segment details
*SubskribeSandboxClient::ApprovalsApi* | [**get_approval_segments**](docs/ApprovalsApi.md#get_approval_segments) | **GET** /approvalSegments | Get approval segments
*SubskribeSandboxClient::ApprovalsApi* | [**get_import_details_by_id**](docs/ApprovalsApi.md#get_import_details_by_id) | **GET** /approvalMatrix/csv/{importId} | Get import details
*SubskribeSandboxClient::ApprovalsApi* | [**get_import_preview**](docs/ApprovalsApi.md#get_import_preview) | **GET** /approvalMatrix/csv/{importId}/preview | Preview import changes
*SubskribeSandboxClient::ApprovalsApi* | [**get_import_result**](docs/ApprovalsApi.md#get_import_result) | **GET** /approvalMatrix/csv/{importId}/download | Download the csv for an import
*SubskribeSandboxClient::ApprovalsApi* | [**receive_approval_flow_notification**](docs/ApprovalsApi.md#receive_approval_flow_notification) | **POST** /approvalFlowNotifications | Receive approval flow notification
*SubskribeSandboxClient::ApprovalsApi* | [**submit_approval_matrix_csv**](docs/ApprovalsApi.md#submit_approval_matrix_csv) | **POST** /approvalMatrix/csv/{importId}/submit | Finalize an import
*SubskribeSandboxClient::ApprovalsApi* | [**update_approval_role**](docs/ApprovalsApi.md#update_approval_role) | **PUT** /approvalRoles/{approvalRoleId} | Update an approval role
*SubskribeSandboxClient::ApprovalsApi* | [**update_approval_segment**](docs/ApprovalsApi.md#update_approval_segment) | **PUT** /approvalSegments/{approvalSegmentId} | Update an approval segment
*SubskribeSandboxClient::ApprovalsApi* | [**upload_approval_matrix_csv**](docs/ApprovalsApi.md#upload_approval_matrix_csv) | **POST** /approvalMatrix/csv | Upload an Approval Matrix
*SubskribeSandboxClient::AttachmentsApi* | [**add_attachment_to_account**](docs/AttachmentsApi.md#add_attachment_to_account) | **POST** /attachments/account/{accountId} | Add an attachment
*SubskribeSandboxClient::AttachmentsApi* | [**delete_attachment_from_account**](docs/AttachmentsApi.md#delete_attachment_from_account) | **DELETE** /attachments/{attachmentId} | Delete an attachment
*SubskribeSandboxClient::AttachmentsApi* | [**get_attachment**](docs/AttachmentsApi.md#get_attachment) | **GET** /attachments/{attachmentId} | Get attachment contents
*SubskribeSandboxClient::AttachmentsApi* | [**list_account_attachments**](docs/AttachmentsApi.md#list_account_attachments) | **GET** /attachments/account/{accountId} | Get attachments for an account
*SubskribeSandboxClient::AttachmentsApi* | [**modify_attachment**](docs/AttachmentsApi.md#modify_attachment) | **PUT** /attachments | Update the details of an attachment
*SubskribeSandboxClient::AuthenticationApi* | [**add_saml_integration**](docs/AuthenticationApi.md#add_saml_integration) | **POST** /auth/saml | Add a saml integration
*SubskribeSandboxClient::AuthenticationApi* | [**create_api_key**](docs/AuthenticationApi.md#create_api_key) | **POST** /apikey | Create a new api key
*SubskribeSandboxClient::AuthenticationApi* | [**get_all_api_keys**](docs/AuthenticationApi.md#get_all_api_keys) | **GET** /apikey | Retrieves all API keys
*SubskribeSandboxClient::AuthenticationApi* | [**get_api_key_by_id**](docs/AuthenticationApi.md#get_api_key_by_id) | **GET** /apikey/{id} | Retrieve an API key by id
*SubskribeSandboxClient::AuthenticationApi* | [**revoke_api_key**](docs/AuthenticationApi.md#revoke_api_key) | **DELETE** /apikey/revoke | revoke all keys
*SubskribeSandboxClient::AuthenticationApi* | [**revoke_api_key_by_id**](docs/AuthenticationApi.md#revoke_api_key_by_id) | **DELETE** /apikey/revoke/{id} | revoke an API key by id
*SubskribeSandboxClient::BillingApi* | [**add_automated_invoice_rule**](docs/BillingApi.md#add_automated_invoice_rule) | **POST** /automatedInvoiceRules | Create an automated invoice rule
*SubskribeSandboxClient::BillingApi* | [**add_billing_schedule**](docs/BillingApi.md#add_billing_schedule) | **POST** /invoices/schedule | Add a new billing schedule for subscription line item
*SubskribeSandboxClient::BillingApi* | [**add_subscription_charge_alias**](docs/BillingApi.md#add_subscription_charge_alias) | **PUT** /alias/subscriptionCharge/{aliasId} | Create an alias for a subscription id/charge id pair
*SubskribeSandboxClient::BillingApi* | [**apply_credit_memo**](docs/BillingApi.md#apply_credit_memo) | **POST** /settlements/applyCreditMemo | Apply a credit memo
*SubskribeSandboxClient::BillingApi* | [**create_bulk_invoice_run**](docs/BillingApi.md#create_bulk_invoice_run) | **POST** /invoices/bulk | Create a bulk invoice run
*SubskribeSandboxClient::BillingApi* | [**create_invoice_document**](docs/BillingApi.md#create_invoice_document) | **POST** /invoices/{invoiceNumber}/pdf | Generate invoice PDF
*SubskribeSandboxClient::BillingApi* | [**delete_billing_schedule**](docs/BillingApi.md#delete_billing_schedule) | **DELETE** /invoices/schedule/{id} | Delete an existing billing schedule
*SubskribeSandboxClient::BillingApi* | [**delete_invoice**](docs/BillingApi.md#delete_invoice) | **DELETE** /invoices/{number} | Delete invoice
*SubskribeSandboxClient::BillingApi* | [**delete_subscription_charge_alias**](docs/BillingApi.md#delete_subscription_charge_alias) | **DELETE** /alias/subscriptionCharge/{aliasId} | Delete the specified alias
*SubskribeSandboxClient::BillingApi* | [**generate_invoice**](docs/BillingApi.md#generate_invoice) | **POST** /invoices/generate | Generate subscription invoices
*SubskribeSandboxClient::BillingApi* | [**get_account_receivable_contact**](docs/BillingApi.md#get_account_receivable_contact) | **GET** /accountReceivableContact | Get the contact for accounts receivable
*SubskribeSandboxClient::BillingApi* | [**get_automated_invoice_rule**](docs/BillingApi.md#get_automated_invoice_rule) | **GET** /automatedInvoiceRules/{id} | Get automated invoice rule details
*SubskribeSandboxClient::BillingApi* | [**get_automated_invoice_rules**](docs/BillingApi.md#get_automated_invoice_rules) | **GET** /automatedInvoiceRules | Get automated invoice rules for a tenant
*SubskribeSandboxClient::BillingApi* | [**get_billing_schedules**](docs/BillingApi.md#get_billing_schedules) | **GET** /invoices/schedule | Get billing schedules for a subscription line item
*SubskribeSandboxClient::BillingApi* | [**get_bulk_invoice_run**](docs/BillingApi.md#get_bulk_invoice_run) | **GET** /invoices/bulk/{bulkInvoiceRunId} | Get bulk invoice run details
*SubskribeSandboxClient::BillingApi* | [**get_bulk_invoice_run_items**](docs/BillingApi.md#get_bulk_invoice_run_items) | **GET** /invoices/bulk/{bulkInvoiceRunId}/runItems | Get items for bulk invoice run
*SubskribeSandboxClient::BillingApi* | [**get_dunning_setting**](docs/BillingApi.md#get_dunning_setting) | **GET** /dunningSetting | Get dunning settings
*SubskribeSandboxClient::BillingApi* | [**get_invoice**](docs/BillingApi.md#get_invoice) | **GET** /invoices/{number} | Get invoice details
*SubskribeSandboxClient::BillingApi* | [**get_invoice_balance**](docs/BillingApi.md#get_invoice_balance) | **GET** /invoices/{number}/balance | Get invoice balance
*SubskribeSandboxClient::BillingApi* | [**get_invoice_document_pdf**](docs/BillingApi.md#get_invoice_document_pdf) | **GET** /invoices/{invoiceNumber}/pdf | Download invoice PDF
*SubskribeSandboxClient::BillingApi* | [**get_invoices**](docs/BillingApi.md#get_invoices) | **GET** /invoices | Get all invoices for a subscription
*SubskribeSandboxClient::BillingApi* | [**get_raw_invoice_document_json**](docs/BillingApi.md#get_raw_invoice_document_json) | **GET** /invoices/{invoiceNumber}/documentJson | Get the invoice document JSON that is used to render invoice PDF
*SubskribeSandboxClient::BillingApi* | [**get_settlement_application**](docs/BillingApi.md#get_settlement_application) | **GET** /settlements/{id} | Get settlement application details
*SubskribeSandboxClient::BillingApi* | [**get_settlement_applications**](docs/BillingApi.md#get_settlement_applications) | **GET** /settlements | Get settlement applications
*SubskribeSandboxClient::BillingApi* | [**get_subscription_charge_alias**](docs/BillingApi.md#get_subscription_charge_alias) | **GET** /alias/subscriptionCharge/{aliasId} | Get the details of an alias
*SubskribeSandboxClient::BillingApi* | [**get_usage_for_subscription_charge**](docs/BillingApi.md#get_usage_for_subscription_charge) | **GET** /invoices/usage | Get usage
*SubskribeSandboxClient::BillingApi* | [**list_aliases_for_subscription**](docs/BillingApi.md#list_aliases_for_subscription) | **GET** /alias/subscriptionCharge | Get aliases for a subscription
*SubskribeSandboxClient::BillingApi* | [**post_invoice**](docs/BillingApi.md#post_invoice) | **POST** /invoices/{number}/post | Mark invoice as posted
*SubskribeSandboxClient::BillingApi* | [**post_invoices_for_bulk_invoice_run**](docs/BillingApi.md#post_invoices_for_bulk_invoice_run) | **PUT** /invoices/bulk/{bulkInvoiceRunId}/post | Posts invoices for a bulk run
*SubskribeSandboxClient::BillingApi* | [**preview_invoice_by_order_period**](docs/BillingApi.md#preview_invoice_by_order_period) | **GET** /invoices/unbilledUsage | Get unbilled usage
*SubskribeSandboxClient::BillingApi* | [**preview_invoice_by_order_period1**](docs/BillingApi.md#preview_invoice_by_order_period1) | **GET** /invoices/preview | Preview invoices
*SubskribeSandboxClient::BillingApi* | [**put_account_receivable_contact**](docs/BillingApi.md#put_account_receivable_contact) | **PUT** /accountReceivableContact | Set the contact for accounts receivable
*SubskribeSandboxClient::BillingApi* | [**send_invoice_reminder**](docs/BillingApi.md#send_invoice_reminder) | **POST** /dunning/sendInvoiceReminder/{invoiceNumber} | Send an Invoice Reminder
*SubskribeSandboxClient::BillingApi* | [**send_test_dunning_email**](docs/BillingApi.md#send_test_dunning_email) | **POST** /dunning/sendTestEmail/{reminderType} | Send a test email
*SubskribeSandboxClient::BillingApi* | [**update_automated_invoice_rule**](docs/BillingApi.md#update_automated_invoice_rule) | **PUT** /automatedInvoiceRules/{id} | Update automated invoice rule details
*SubskribeSandboxClient::BillingApi* | [**update_dunning_setting**](docs/BillingApi.md#update_dunning_setting) | **PUT** /dunningSetting | Update dunning settings
*SubskribeSandboxClient::BillingApi* | [**update_invoice**](docs/BillingApi.md#update_invoice) | **PUT** /invoices/{number} | Update invoice details
*SubskribeSandboxClient::BillingApi* | [**update_invoice_sequence**](docs/BillingApi.md#update_invoice_sequence) | **POST** /invoices/sequence/{invoiceConfigId} | Update invoice sequence
*SubskribeSandboxClient::BillingApi* | [**void_invoice**](docs/BillingApi.md#void_invoice) | **PUT** /invoices/{number}/void | Mark invoice as voided
*SubskribeSandboxClient::CreditMemoApi* | [**convert_negative_draft_invoice**](docs/CreditMemoApi.md#convert_negative_draft_invoice) | **PUT** /creditmemos/convert/{invoiceNumber} | Convert invoice to credit memo
*SubskribeSandboxClient::CreditMemoApi* | [**create_credit_memo_document**](docs/CreditMemoApi.md#create_credit_memo_document) | **POST** /creditmemos/{creditMemoNumber}/pdf | Create a credit memo document
*SubskribeSandboxClient::CreditMemoApi* | [**create_standalone_credit_memo**](docs/CreditMemoApi.md#create_standalone_credit_memo) | **POST** /creditmemos | Create a standalone credit memo
*SubskribeSandboxClient::CreditMemoApi* | [**delete_credit_memo**](docs/CreditMemoApi.md#delete_credit_memo) | **DELETE** /creditmemos/{creditMemoNumber} | Delete a credit memo
*SubskribeSandboxClient::CreditMemoApi* | [**get_credit_balance**](docs/CreditMemoApi.md#get_credit_balance) | **GET** /creditmemos/{creditMemoNumber}/balance | Get credit memo balance
*SubskribeSandboxClient::CreditMemoApi* | [**get_credit_memo**](docs/CreditMemoApi.md#get_credit_memo) | **GET** /creditmemos/{creditMemoNumber} | Get credit memo details
*SubskribeSandboxClient::CreditMemoApi* | [**get_credit_memo_configuration**](docs/CreditMemoApi.md#get_credit_memo_configuration) | **GET** /creditmemos/configuration | Get credit memo configuration for the tenant
*SubskribeSandboxClient::CreditMemoApi* | [**get_credit_memo_document_pdf**](docs/CreditMemoApi.md#get_credit_memo_document_pdf) | **GET** /creditmemos/{creditMemoNumber}/pdf | Download credit memo pdf
*SubskribeSandboxClient::CreditMemoApi* | [**get_credit_memo_for_account**](docs/CreditMemoApi.md#get_credit_memo_for_account) | **GET** /creditmemos | Get credit memos for an account
*SubskribeSandboxClient::CreditMemoApi* | [**post_credit_memo**](docs/CreditMemoApi.md#post_credit_memo) | **POST** /creditmemos/{creditMemoNumber}/post | Post a credit memo
*SubskribeSandboxClient::CreditMemoApi* | [**update_credit_memo_configuration**](docs/CreditMemoApi.md#update_credit_memo_configuration) | **POST** /creditmemos/configuration | Update credit memo configuration
*SubskribeSandboxClient::CreditMemoApi* | [**update_draft_credit_memo**](docs/CreditMemoApi.md#update_draft_credit_memo) | **PUT** /creditmemos/{creditMemoNumber} | Update a credit memo
*SubskribeSandboxClient::CustomFieldApi* | [**create_custom_field_definition**](docs/CustomFieldApi.md#create_custom_field_definition) | **POST** /customFieldDefinition | Create a custom field definition
*SubskribeSandboxClient::CustomFieldApi* | [**delete_custom_field_definition**](docs/CustomFieldApi.md#delete_custom_field_definition) | **DELETE** /customFieldDefinition/{id} | Delete a custom field definition
*SubskribeSandboxClient::CustomFieldApi* | [**get_custom_field_definitions**](docs/CustomFieldApi.md#get_custom_field_definitions) | **GET** /customFieldDefinition/{parentObjectType} | Get custom field definitions
*SubskribeSandboxClient::CustomFieldApi* | [**get_custom_fields**](docs/CustomFieldApi.md#get_custom_fields) | **GET** /customField/{parentObjectType}/{parentObjectId} | Get custom fields by type and parent object id
*SubskribeSandboxClient::CustomFieldApi* | [**update_custom_field**](docs/CustomFieldApi.md#update_custom_field) | **PUT** /customField/{parentObjectType}/{parentObjectId}/{customFieldName} | Update an existing set of custom fields
*SubskribeSandboxClient::CustomFieldApi* | [**update_custom_field_definition**](docs/CustomFieldApi.md#update_custom_field_definition) | **PUT** /customFieldDefinition/{id} | Update an existing custom field definition
*SubskribeSandboxClient::CustomFieldApi* | [**update_custom_fields**](docs/CustomFieldApi.md#update_custom_fields) | **PUT** /customField/{parentObjectType}/{parentObjectId} | Update an existing set of custom fields
*SubskribeSandboxClient::CustomizationApi* | [**compile_order_creation_customization_zeppa_script**](docs/CustomizationApi.md#compile_order_creation_customization_zeppa_script) | **PUT** /beta/customization/orderCreationCustomization/compile | Compile and Verify a order creation customization for correctness
*SubskribeSandboxClient::CustomizationApi* | [**compile_plan_selection_customization_zeppa_script**](docs/CustomizationApi.md#compile_plan_selection_customization_zeppa_script) | **PUT** /beta/customization/planSelectionCustomization/compile | Compile and Verify a plan selection customization for correctness
*SubskribeSandboxClient::CustomizationApi* | [**test_order_creation_customization_zeppa_script**](docs/CustomizationApi.md#test_order_creation_customization_zeppa_script) | **PUT** /beta/customization/orderCreationCustomization/test | Test a order creation customization zeppa script
*SubskribeSandboxClient::CustomizationApi* | [**test_plan_selection_customization_zeppa_script**](docs/CustomizationApi.md#test_plan_selection_customization_zeppa_script) | **PUT** /beta/customization/planSelectionCustomization/test | Test a plan selection customization zeppa script
*SubskribeSandboxClient::DefaultApi* | [**add_and_apply_payment**](docs/DefaultApi.md#add_and_apply_payment) | **POST** /settlements/addAndApplyPayment | Apply a payment on a specific invoice
*SubskribeSandboxClient::DefaultApi* | [**get_order_document**](docs/DefaultApi.md#get_order_document) | **GET** /documentLinks/{id} | 
*SubskribeSandboxClient::DefaultApi* | [**validate_address**](docs/DefaultApi.md#validate_address) | **POST** /anrok/validate | Validate an address with Anrok
*SubskribeSandboxClient::DefaultApi* | [**validate_address1**](docs/DefaultApi.md#validate_address1) | **POST** /taxjar/validate | Validate an address with TaxJar
*SubskribeSandboxClient::DiscountsApi* | [**add_discount**](docs/DiscountsApi.md#add_discount) | **POST** /discounts | Create a discount
*SubskribeSandboxClient::DiscountsApi* | [**delete_discount**](docs/DiscountsApi.md#delete_discount) | **DELETE** /discounts/{id} | Delete a discount
*SubskribeSandboxClient::DiscountsApi* | [**get_discount**](docs/DiscountsApi.md#get_discount) | **GET** /discounts/{id} | Get discount
*SubskribeSandboxClient::DiscountsApi* | [**get_discounts**](docs/DiscountsApi.md#get_discounts) | **GET** /discounts | Get discounts
*SubskribeSandboxClient::DiscountsApi* | [**update_discount**](docs/DiscountsApi.md#update_discount) | **PUT** /discounts/{id} | Update discount details
*SubskribeSandboxClient::DiscountsApi* | [**update_discount_status**](docs/DiscountsApi.md#update_discount_status) | **PUT** /discounts/{id}/status/{status} | Update discount status
*SubskribeSandboxClient::ERPApi* | [**process_delete_tasks**](docs/ERPApi.md#process_delete_tasks) | **POST** /erp/processDeleteTasks/{accountingPeriodId} | Trigger ERP journal entry deletion task
*SubskribeSandboxClient::ERPApi* | [**process_sync_tasks**](docs/ERPApi.md#process_sync_tasks) | **POST** /erp/processSyncTasks/{accountingPeriodId} | Trigger ERP journal entry sync task
*SubskribeSandboxClient::ERPApi* | [**sync_credit_memo_to_erp**](docs/ERPApi.md#sync_credit_memo_to_erp) | **POST** /erp/syncCreditMemo/{creditMemoNumber} | Trigger ERP credit memo sync task
*SubskribeSandboxClient::ERPApi* | [**sync_invoice_to_erp**](docs/ERPApi.md#sync_invoice_to_erp) | **POST** /erp/syncInvoice/{invoiceId} | Trigger ERP invoice sync task
*SubskribeSandboxClient::ERPApi* | [**sync_void_invoice_to_erp**](docs/ERPApi.md#sync_void_invoice_to_erp) | **POST** /erp/syncVoidInvoice/{invoiceNumber} | Trigger ERP void invoice sync task
*SubskribeSandboxClient::EntitiesApi* | [**account_entity_migration**](docs/EntitiesApi.md#account_entity_migration) | **POST** /entities/migrate/account | Move account to a target entity
*SubskribeSandboxClient::EntitiesApi* | [**composite_order_entity_migration**](docs/EntitiesApi.md#composite_order_entity_migration) | **POST** /entities/migrate/compositeOrder | Move composite order to a target entity
*SubskribeSandboxClient::EntitiesApi* | [**create**](docs/EntitiesApi.md#create) | **POST** /entities | Create an entity
*SubskribeSandboxClient::EntitiesApi* | [**delete_entity**](docs/EntitiesApi.md#delete_entity) | **DELETE** /entities/{id} | Delete entity
*SubskribeSandboxClient::EntitiesApi* | [**get_entities**](docs/EntitiesApi.md#get_entities) | **GET** /entities | Gets entities
*SubskribeSandboxClient::EntitiesApi* | [**get_entity_by_id**](docs/EntitiesApi.md#get_entity_by_id) | **GET** /entities/{id} | Gets entity details
*SubskribeSandboxClient::EntitiesApi* | [**get_logo**](docs/EntitiesApi.md#get_logo) | **GET** /entities/logo/{entityId} | Get entity logo
*SubskribeSandboxClient::EntitiesApi* | [**order_entity_migration**](docs/EntitiesApi.md#order_entity_migration) | **POST** /entities/migrate/order | Update order entity
*SubskribeSandboxClient::EntitiesApi* | [**subscription_entity_migration**](docs/EntitiesApi.md#subscription_entity_migration) | **POST** /entities/migrate/subscription | Move subscription to a target entity
*SubskribeSandboxClient::EntitiesApi* | [**upload_logo**](docs/EntitiesApi.md#upload_logo) | **PUT** /entities/logo/{entityId} | Update entity logo
*SubskribeSandboxClient::ImportApi* | [**create_flatfile_workbook**](docs/ImportApi.md#create_flatfile_workbook) | **POST** /import/flatfile/{domain} | Create a Flatfile workbook
*SubskribeSandboxClient::ImportApi* | [**get_account_contacts_in_import_format**](docs/ImportApi.md#get_account_contacts_in_import_format) | **GET** /import/export/accountContact | Get account contacts for export
*SubskribeSandboxClient::ImportApi* | [**get_amendment_order_export_in_import_format**](docs/ImportApi.md#get_amendment_order_export_in_import_format) | **GET** /import/export/amendmentOrders | Get amendment orders in import CSV format
*SubskribeSandboxClient::ImportApi* | [**get_available_schemas**](docs/ImportApi.md#get_available_schemas) | **GET** /import/schemas | Return available schemas
*SubskribeSandboxClient::ImportApi* | [**get_catalog_data_in_import_format**](docs/ImportApi.md#get_catalog_data_in_import_format) | **GET** /import/export/catalog | Get catalog data for export
*SubskribeSandboxClient::ImportApi* | [**get_data_import_by_id**](docs/ImportApi.md#get_data_import_by_id) | **GET** /import/{importId} | Gets an import item
*SubskribeSandboxClient::ImportApi* | [**get_data_imports**](docs/ImportApi.md#get_data_imports) | **GET** /import | Gets all import items
*SubskribeSandboxClient::ImportApi* | [**get_import_result1**](docs/ImportApi.md#get_import_result1) | **GET** /import/{importId}/result | Get import details
*SubskribeSandboxClient::ImportApi* | [**get_new_order_export_in_import_format**](docs/ImportApi.md#get_new_order_export_in_import_format) | **GET** /import/export/newOrders | Get new orders in import CSV format
*SubskribeSandboxClient::ImportApi* | [**process_import**](docs/ImportApi.md#process_import) | **PUT** /import/{importId}/process | Process an import by ID
*SubskribeSandboxClient::ImportApi* | [**validate_multi_part_file_import**](docs/ImportApi.md#validate_multi_part_file_import) | **POST** /import | Validate import file
*SubskribeSandboxClient::IntegrationsApi* | [**add_integration**](docs/IntegrationsApi.md#add_integration) | **POST** /anrok | Add a Anrok integration
*SubskribeSandboxClient::IntegrationsApi* | [**add_integration1**](docs/IntegrationsApi.md#add_integration1) | **POST** /taxjar | Add a TaxJar integration
*SubskribeSandboxClient::IntegrationsApi* | [**authorization_code_callback**](docs/IntegrationsApi.md#authorization_code_callback) | **GET** /hubspot | Handle HubSpot authorization code
*SubskribeSandboxClient::IntegrationsApi* | [**authorization_code_callback1**](docs/IntegrationsApi.md#authorization_code_callback1) | **GET** /sfdc | Callback for the authorization code
*SubskribeSandboxClient::IntegrationsApi* | [**complete_integration**](docs/IntegrationsApi.md#complete_integration) | **GET** /docusign | Complete Docusign integration
*SubskribeSandboxClient::IntegrationsApi* | [**delete_integration**](docs/IntegrationsApi.md#delete_integration) | **DELETE** /docusign | Delete Docusign integration
*SubskribeSandboxClient::IntegrationsApi* | [**delete_integration1**](docs/IntegrationsApi.md#delete_integration1) | **DELETE** /hubspot | Delete HubSpot Integration
*SubskribeSandboxClient::IntegrationsApi* | [**delete_integration2**](docs/IntegrationsApi.md#delete_integration2) | **DELETE** /sfdc | Delete Salesforce integration
*SubskribeSandboxClient::IntegrationsApi* | [**get_account_by_id**](docs/IntegrationsApi.md#get_account_by_id) | **GET** /sfdc/account/{id} | Get Salesforce account
*SubskribeSandboxClient::IntegrationsApi* | [**get_accounts_by_name**](docs/IntegrationsApi.md#get_accounts_by_name) | **GET** /sfdc/account | Get Salesforce accounts
*SubskribeSandboxClient::IntegrationsApi* | [**get_integration**](docs/IntegrationsApi.md#get_integration) | **GET** /anrok/{integrationId} | Get integration details
*SubskribeSandboxClient::IntegrationsApi* | [**get_integration1**](docs/IntegrationsApi.md#get_integration1) | **GET** /avalara/{integrationId} | Gets Avalara integration details
*SubskribeSandboxClient::IntegrationsApi* | [**get_integration2**](docs/IntegrationsApi.md#get_integration2) | **GET** /taxjar/{integrationId} | Get integration details
*SubskribeSandboxClient::IntegrationsApi* | [**get_integration_by_tenant**](docs/IntegrationsApi.md#get_integration_by_tenant) | **GET** /avalara | Gets Avalara integration details
*SubskribeSandboxClient::IntegrationsApi* | [**get_opportunities_by_account_id**](docs/IntegrationsApi.md#get_opportunities_by_account_id) | **GET** /sfdc/opportunity | Get Salesforce opportunities
*SubskribeSandboxClient::IntegrationsApi* | [**import_account**](docs/IntegrationsApi.md#import_account) | **POST** /sfdc/account | Import account from Salesforce
*SubskribeSandboxClient::IntegrationsApi* | [**initiate_integration**](docs/IntegrationsApi.md#initiate_integration) | **POST** /docusign | Create Docusign integration
*SubskribeSandboxClient::IntegrationsApi* | [**initiate_integration1**](docs/IntegrationsApi.md#initiate_integration1) | **POST** /hubspot | Initiate a HubSpot integration
*SubskribeSandboxClient::IntegrationsApi* | [**initiate_integration2**](docs/IntegrationsApi.md#initiate_integration2) | **POST** /sfdc | Initiate integration with Salesforce
*SubskribeSandboxClient::IntegrationsApi* | [**integrate**](docs/IntegrationsApi.md#integrate) | **POST** /avalara | Create an Avalara integration
*SubskribeSandboxClient::IntegrationsApi* | [**ping**](docs/IntegrationsApi.md#ping) | **PUT** /avalara/ping | Pings Avalara
*SubskribeSandboxClient::IntegrationsApi* | [**setup_hub_spot**](docs/IntegrationsApi.md#setup_hub_spot) | **POST** /hubspot/setup | Add custom properties to HubSpot
*SubskribeSandboxClient::IntegrationsApi* | [**sync_account_to_salesforce**](docs/IntegrationsApi.md#sync_account_to_salesforce) | **PUT** /sfdc/syncAccount/{id} | Sync an account to Salesforce
*SubskribeSandboxClient::IntegrationsApi* | [**sync_deleted_orders_to_salesforce**](docs/IntegrationsApi.md#sync_deleted_orders_to_salesforce) | **PUT** /sfdc/syncDeletedOrders | Sync orders to Salesforce
*SubskribeSandboxClient::IntegrationsApi* | [**sync_esign_details_for_order_to_hub_spot**](docs/IntegrationsApi.md#sync_esign_details_for_order_to_hub_spot) | **POST** /hubspot/esign/{orderId} | Sync esign details for order id
*SubskribeSandboxClient::IntegrationsApi* | [**sync_order_to_salesforce**](docs/IntegrationsApi.md#sync_order_to_salesforce) | **PUT** /sfdc/sync/{id} | Sync order to Salesforce
*SubskribeSandboxClient::IntegrationsApi* | [**sync_orders_to_salesforce**](docs/IntegrationsApi.md#sync_orders_to_salesforce) | **PUT** /sfdc/syncOrders | Sync orders to Salesforce
*SubskribeSandboxClient::IntegrationsApi* | [**sync_tenant_to_salesforce**](docs/IntegrationsApi.md#sync_tenant_to_salesforce) | **PUT** /sfdc/syncTenant | Sync whole tenant to Salesforce in a paginated fashion
*SubskribeSandboxClient::IntegrationsApi* | [**test_integration**](docs/IntegrationsApi.md#test_integration) | **PUT** /anrok/test | Test an integration is valid
*SubskribeSandboxClient::IntegrationsApi* | [**test_integration1**](docs/IntegrationsApi.md#test_integration1) | **PUT** /taxjar/test | Test an integration is valid
*SubskribeSandboxClient::IntegrationsApi* | [**update_primary_order_id_for_opportunity**](docs/IntegrationsApi.md#update_primary_order_id_for_opportunity) | **PUT** /sfdc/order/{id} | Make an order primary
*SubskribeSandboxClient::IntegrationsApi* | [**verify_setup**](docs/IntegrationsApi.md#verify_setup) | **POST** /hubspot/setup/verify | Verify HubSpot setup
*SubskribeSandboxClient::MetricsReportingApi* | [**add_external_arr_metrics**](docs/MetricsReportingApi.md#add_external_arr_metrics) | **POST** /metricsReporting/externalArrMetrics | submit request to generate external arr metrics
*SubskribeSandboxClient::MetricsReportingApi* | [**get_external_arr_metrics**](docs/MetricsReportingApi.md#get_external_arr_metrics) | **GET** /metricsReporting/externalArrMetrics/{id} | gets external arr metrics request for the provided id
*SubskribeSandboxClient::MetricsReportingApi* | [**get_external_arr_metrics1**](docs/MetricsReportingApi.md#get_external_arr_metrics1) | **GET** /metricsReporting/externalArrMetrics | gets external arr metrics requests submitted
*SubskribeSandboxClient::MetricsReportingApi* | [**populate_arr_metrics_for_subscription**](docs/MetricsReportingApi.md#populate_arr_metrics_for_subscription) | **PUT** /metricsReporting/populateArrMetrics/subscriptions/{subscriptionId} | submit request to generate/regenerate arr metrics for a subscription
*SubskribeSandboxClient::NotificationsApi* | [**add_target_and_events_subscriptions**](docs/NotificationsApi.md#add_target_and_events_subscriptions) | **POST** /notifications | Add a notification target
*SubskribeSandboxClient::NotificationsApi* | [**get_all_notification_subscriptions_for_tenant**](docs/NotificationsApi.md#get_all_notification_subscriptions_for_tenant) | **GET** /notifications | Get all notifications
*SubskribeSandboxClient::NotificationsApi* | [**subscribe_existing_notification_target_to_event**](docs/NotificationsApi.md#subscribe_existing_notification_target_to_event) | **POST** /notifications/{notificationId} | Attach an event to a notification
*SubskribeSandboxClient::NotificationsApi* | [**unsubscribe_target_or_event**](docs/NotificationsApi.md#unsubscribe_target_or_event) | **POST** /notifications/unsubscribe/{notificationId} | Unsubscribe from an event
*SubskribeSandboxClient::OpportunityApi* | [**create_opportunity**](docs/OpportunityApi.md#create_opportunity) | **POST** /opportunity | Creates a standalone opportunity
*SubskribeSandboxClient::OpportunityApi* | [**reset_opportunity_closed_state**](docs/OpportunityApi.md#reset_opportunity_closed_state) | **POST** /opportunity/{id}/open | Opens an opportunity
*SubskribeSandboxClient::OpportunityApi* | [**update_opportunity**](docs/OpportunityApi.md#update_opportunity) | **PUT** /opportunity/{id} | Updates a standalone opportunity
*SubskribeSandboxClient::OrdersApi* | [**add_document_template**](docs/OrdersApi.md#add_document_template) | **POST** /templates | Add new predefined terms
*SubskribeSandboxClient::OrdersApi* | [**add_order**](docs/OrdersApi.md#add_order) | **POST** /orders | Create an order
*SubskribeSandboxClient::OrdersApi* | [**create_composite_order_document**](docs/OrdersApi.md#create_composite_order_document) | **POST** /compositeOrders/{id}/pdf | Generate a composite order PDF
*SubskribeSandboxClient::OrdersApi* | [**create_order_document**](docs/OrdersApi.md#create_order_document) | **POST** /orders/{id}/pdf | Generate an order PDF
*SubskribeSandboxClient::OrdersApi* | [**delete_document_template**](docs/OrdersApi.md#delete_document_template) | **DELETE** /templates/{id} | Delete predefined terms
*SubskribeSandboxClient::OrdersApi* | [**delete_order**](docs/OrdersApi.md#delete_order) | **DELETE** /orders/{id} | Delete an order
*SubskribeSandboxClient::OrdersApi* | [**execute_order**](docs/OrdersApi.md#execute_order) | **PUT** /orders/{id}/execute | Mark order as executed
*SubskribeSandboxClient::OrdersApi* | [**force_execute_order**](docs/OrdersApi.md#force_execute_order) | **PUT** /orders/{id}/execute/force | Mark order as executed
*SubskribeSandboxClient::OrdersApi* | [**get_composite_order_document**](docs/OrdersApi.md#get_composite_order_document) | **GET** /compositeOrders/{id}/pdf | Fetch composite order form PDF
*SubskribeSandboxClient::OrdersApi* | [**get_document_template**](docs/OrdersApi.md#get_document_template) | **GET** /templates/{id} | Get predefined terms detail
*SubskribeSandboxClient::OrdersApi* | [**get_document_templates**](docs/OrdersApi.md#get_document_templates) | **GET** /templates | Get predefined terms
*SubskribeSandboxClient::OrdersApi* | [**get_opportunities**](docs/OrdersApi.md#get_opportunities) | **GET** /opportunity | Return all opportunities
*SubskribeSandboxClient::OrdersApi* | [**get_opportunity_by_crm_opportunity_id**](docs/OrdersApi.md#get_opportunity_by_crm_opportunity_id) | **GET** /opportunity/{id} | Return details of an opportunity
*SubskribeSandboxClient::OrdersApi* | [**get_order**](docs/OrdersApi.md#get_order) | **GET** /orders/{id} | Get order details
*SubskribeSandboxClient::OrdersApi* | [**get_order_document1**](docs/OrdersApi.md#get_order_document1) | **GET** /orders/{id}/pdf | Fetch order form PDF
*SubskribeSandboxClient::OrdersApi* | [**get_order_document_doc**](docs/OrdersApi.md#get_order_document_doc) | **GET** /orders/{id}/doc | Download word doc version of order form
*SubskribeSandboxClient::OrdersApi* | [**get_order_line_metrics**](docs/OrdersApi.md#get_order_line_metrics) | **GET** /orders/{id}/lineItems/metrics | Get order line metrics
*SubskribeSandboxClient::OrdersApi* | [**get_order_metrics**](docs/OrdersApi.md#get_order_metrics) | **GET** /orders/{id}/metrics | Get order metrics
*SubskribeSandboxClient::OrdersApi* | [**get_orders**](docs/OrdersApi.md#get_orders) | **GET** /orders | Get all Orders
*SubskribeSandboxClient::OrdersApi* | [**get_orders_by_crm_opportunity_id**](docs/OrdersApi.md#get_orders_by_crm_opportunity_id) | **GET** /opportunity/crm/{id}/orders | Return a list of orders associated with a CRM opportunity id
*SubskribeSandboxClient::OrdersApi* | [**rebase_amendment**](docs/OrdersApi.md#rebase_amendment) | **PUT** /orders/{orderId}/rebase | Mark order as executed
*SubskribeSandboxClient::OrdersApi* | [**update_document_template**](docs/OrdersApi.md#update_document_template) | **PUT** /templates/{id} | Update predefined terms
*SubskribeSandboxClient::OrdersApi* | [**update_document_template_status**](docs/OrdersApi.md#update_document_template_status) | **PUT** /templates/{id}/status/{status} | Update predefined terms status
*SubskribeSandboxClient::OrdersApi* | [**update_order**](docs/OrdersApi.md#update_order) | **PUT** /orders | Update order details
*SubskribeSandboxClient::OrdersApi* | [**update_order_status**](docs/OrdersApi.md#update_order_status) | **PUT** /orders/{id}/status/{status} | Update order status
*SubskribeSandboxClient::PaymentsApi* | [**get_account_payment**](docs/PaymentsApi.md#get_account_payment) | **GET** /payments/account/{id} | Get payments
*SubskribeSandboxClient::PaymentsApi* | [**get_account_payment_management_link**](docs/PaymentsApi.md#get_account_payment_management_link) | **GET** /payments/account-payment/{id} | Get account payment management link
*SubskribeSandboxClient::PaymentsApi* | [**get_payment**](docs/PaymentsApi.md#get_payment) | **GET** /payments/{id} | Get payment details
*SubskribeSandboxClient::PaymentsApi* | [**get_payment_balance**](docs/PaymentsApi.md#get_payment_balance) | **GET** /payments/{id}/balance | Get payment balance
*SubskribeSandboxClient::PaymentsApi* | [**get_payment_configuration**](docs/PaymentsApi.md#get_payment_configuration) | **GET** /payments/configuration | Get payment configuration
*SubskribeSandboxClient::PaymentsApi* | [**get_payments**](docs/PaymentsApi.md#get_payments) | **GET** /payments | Get all payments
*SubskribeSandboxClient::PaymentsApi* | [**update_payment_configuration**](docs/PaymentsApi.md#update_payment_configuration) | **POST** /payments/configuration | Update payment configuration
*SubskribeSandboxClient::PaymentsApi* | [**void_payment**](docs/PaymentsApi.md#void_payment) | **PUT** /payments/{id}/void | Voids a payment
*SubskribeSandboxClient::ProductCatalogApi* | [**activate_plan**](docs/ProductCatalogApi.md#activate_plan) | **PUT** /plans/{planId}/activate | Activate a plan
*SubskribeSandboxClient::ProductCatalogApi* | [**add_charge**](docs/ProductCatalogApi.md#add_charge) | **POST** /plans/{planId}/charges | Add charge to plan
*SubskribeSandboxClient::ProductCatalogApi* | [**add_percent_of_plan_relationship**](docs/ProductCatalogApi.md#add_percent_of_plan_relationship) | **POST** /plans/relationships/percentOf | Create percent of relationship
*SubskribeSandboxClient::ProductCatalogApi* | [**add_plan**](docs/ProductCatalogApi.md#add_plan) | **POST** /plans | Create a plan
*SubskribeSandboxClient::ProductCatalogApi* | [**add_product**](docs/ProductCatalogApi.md#add_product) | **POST** /products | Create a product
*SubskribeSandboxClient::ProductCatalogApi* | [**add_product_category**](docs/ProductCatalogApi.md#add_product_category) | **POST** /product/categories | Create a product category
*SubskribeSandboxClient::ProductCatalogApi* | [**deactivate_plan**](docs/ProductCatalogApi.md#deactivate_plan) | **PUT** /plans/{planId}/revertToDraft | Revert a plan to draft
*SubskribeSandboxClient::ProductCatalogApi* | [**delete_catalog_relationship_by_id**](docs/ProductCatalogApi.md#delete_catalog_relationship_by_id) | **DELETE** /plans/relationships/{relationshipId} | Delete a catalog relationship
*SubskribeSandboxClient::ProductCatalogApi* | [**delete_charge**](docs/ProductCatalogApi.md#delete_charge) | **DELETE** /plans/{planId}/charges/{chargeId} | Delete a charge
*SubskribeSandboxClient::ProductCatalogApi* | [**delete_plan**](docs/ProductCatalogApi.md#delete_plan) | **DELETE** /plans/{planId} | Delete a plan
*SubskribeSandboxClient::ProductCatalogApi* | [**delete_product**](docs/ProductCatalogApi.md#delete_product) | **DELETE** /products/{id} | Delete a product
*SubskribeSandboxClient::ProductCatalogApi* | [**delete_product_category**](docs/ProductCatalogApi.md#delete_product_category) | **DELETE** /product/categories/{id} | Delete a product category
*SubskribeSandboxClient::ProductCatalogApi* | [**deprecate_plan**](docs/ProductCatalogApi.md#deprecate_plan) | **PUT** /plans/{planId}/deprecate | Deprecate a plan
*SubskribeSandboxClient::ProductCatalogApi* | [**duplicate_plan**](docs/ProductCatalogApi.md#duplicate_plan) | **POST** /plans/{planId}/duplicate | Duplicate a plan
*SubskribeSandboxClient::ProductCatalogApi* | [**export_product_catalog**](docs/ProductCatalogApi.md#export_product_catalog) | **GET** /products/export | Export product catalog
*SubskribeSandboxClient::ProductCatalogApi* | [**get_catalog_relationship_by_id**](docs/ProductCatalogApi.md#get_catalog_relationship_by_id) | **GET** /plans/relationships/{relationshipId} | Get relationship details
*SubskribeSandboxClient::ProductCatalogApi* | [**get_charge**](docs/ProductCatalogApi.md#get_charge) | **GET** /plans/{planId}/charges/{chargeId} | Get charge details
*SubskribeSandboxClient::ProductCatalogApi* | [**get_charge_ledger_accounts**](docs/ProductCatalogApi.md#get_charge_ledger_accounts) | **GET** /plans/{planId}/charges/{chargeId}/ledgerAccounts | Get ledger accounts
*SubskribeSandboxClient::ProductCatalogApi* | [**get_percent_of_relationships**](docs/ProductCatalogApi.md#get_percent_of_relationships) | **GET** /plans/relationships/percentOf | Get percent of relationships for a plan
*SubskribeSandboxClient::ProductCatalogApi* | [**get_plan**](docs/ProductCatalogApi.md#get_plan) | **GET** /plans/{planId} | Get plan details
*SubskribeSandboxClient::ProductCatalogApi* | [**get_plans**](docs/ProductCatalogApi.md#get_plans) | **GET** /plans | Get plans
*SubskribeSandboxClient::ProductCatalogApi* | [**get_product**](docs/ProductCatalogApi.md#get_product) | **GET** /products/{id} | Get product details.
*SubskribeSandboxClient::ProductCatalogApi* | [**get_product_categories**](docs/ProductCatalogApi.md#get_product_categories) | **GET** /product/categories | Get product Categories
*SubskribeSandboxClient::ProductCatalogApi* | [**get_product_category**](docs/ProductCatalogApi.md#get_product_category) | **GET** /product/categories/{id} | Get product category details
*SubskribeSandboxClient::ProductCatalogApi* | [**get_products**](docs/ProductCatalogApi.md#get_products) | **GET** /products | Get products
*SubskribeSandboxClient::ProductCatalogApi* | [**get_target_plans_for_percent_of_plan_id**](docs/ProductCatalogApi.md#get_target_plans_for_percent_of_plan_id) | **GET** /plans/relationships/percentOf/{planId} | Get percent of target plans
*SubskribeSandboxClient::ProductCatalogApi* | [**map_ledger_accounts_to_charge**](docs/ProductCatalogApi.md#map_ledger_accounts_to_charge) | **PUT** /plans/{planId}/charges/{chargeId}/ledgerAccounts | Map ledger accounts
*SubskribeSandboxClient::ProductCatalogApi* | [**patch_charge**](docs/ProductCatalogApi.md#patch_charge) | **PUT** /plans/{planId}/charges/{chargeId}/partial | Update non-financial charge details
*SubskribeSandboxClient::ProductCatalogApi* | [**reactivate_plan**](docs/ProductCatalogApi.md#reactivate_plan) | **PUT** /plans/{planId}/reactivate | Reactivate a plan
*SubskribeSandboxClient::ProductCatalogApi* | [**update_charge**](docs/ProductCatalogApi.md#update_charge) | **PUT** /plans/{planId}/charges/{chargeId} | Update charge details
*SubskribeSandboxClient::ProductCatalogApi* | [**update_plan**](docs/ProductCatalogApi.md#update_plan) | **PUT** /plans/{planId} | Update plan
*SubskribeSandboxClient::ProductCatalogApi* | [**update_plan_metadata**](docs/ProductCatalogApi.md#update_plan_metadata) | **PUT** /plans/{planId}/metadata | Update plan metadata
*SubskribeSandboxClient::ProductCatalogApi* | [**update_product**](docs/ProductCatalogApi.md#update_product) | **PUT** /products/{id} | Update product details
*SubskribeSandboxClient::ProductCatalogApi* | [**update_product_category**](docs/ProductCatalogApi.md#update_product_category) | **PUT** /product/categories/{id} | Update product category details
*SubskribeSandboxClient::RateCardApi* | [**get_price_attributes_csv**](docs/RateCardApi.md#get_price_attributes_csv) | **GET** /ratecards/attributes/csv | Fetch the price attributes defined in the system in CSV format
*SubskribeSandboxClient::RefundsApi* | [**create_and_apply_refund**](docs/RefundsApi.md#create_and_apply_refund) | **POST** /refunds | Create and apply refund
*SubskribeSandboxClient::RefundsApi* | [**get_refund_by_id**](docs/RefundsApi.md#get_refund_by_id) | **GET** /refunds/{id} | Get refund details
*SubskribeSandboxClient::RefundsApi* | [**get_refunds**](docs/RefundsApi.md#get_refunds) | **GET** /refunds | Get refunds
*SubskribeSandboxClient::ReportsApi* | [**generate**](docs/ReportsApi.md#generate) | **POST** /reports/generate | Generate a report
*SubskribeSandboxClient::ReportsApi* | [**get_predefined_report_defs**](docs/ReportsApi.md#get_predefined_report_defs) | **GET** /reports | Get report definitions
*SubskribeSandboxClient::ReportsApi* | [**get_report_output**](docs/ReportsApi.md#get_report_output) | **GET** /reports/{reportRunId}/result | Run a generated report
*SubskribeSandboxClient::ReportsApi* | [**run**](docs/ReportsApi.md#run) | **POST** /reports/run | Run a report
*SubskribeSandboxClient::RevenueRecognitionApi* | [**add_recognition_rule**](docs/RevenueRecognitionApi.md#add_recognition_rule) | **POST** /revrec/rules | Create a revenue recognition rule
*SubskribeSandboxClient::RevenueRecognitionApi* | [**create_recognition_event**](docs/RevenueRecognitionApi.md#create_recognition_event) | **POST** /revrec/events | Create a revenue recognition event
*SubskribeSandboxClient::RevenueRecognitionApi* | [**delete_rule**](docs/RevenueRecognitionApi.md#delete_rule) | **DELETE** /revrec/rules/{ruleId} | Delete a recognition rule
*SubskribeSandboxClient::RevenueRecognitionApi* | [**get_recognition_events_by_subscription_id_charge_id**](docs/RevenueRecognitionApi.md#get_recognition_events_by_subscription_id_charge_id) | **GET** /revrec/events | Get revenue recognition events
*SubskribeSandboxClient::RevenueRecognitionApi* | [**get_recognition_rule_by_id**](docs/RevenueRecognitionApi.md#get_recognition_rule_by_id) | **GET** /revrec/rules | Get revenue recognition rules
*SubskribeSandboxClient::RevenueRecognitionApi* | [**get_recognition_rule_by_id1**](docs/RevenueRecognitionApi.md#get_recognition_rule_by_id1) | **GET** /revrec/rules/{id} | Get revenue recognition rule
*SubskribeSandboxClient::RevenueRecognitionApi* | [**get_revenue_waterfall**](docs/RevenueRecognitionApi.md#get_revenue_waterfall) | **GET** /revrec/waterfall | Download waterfall report
*SubskribeSandboxClient::RevenueRecognitionApi* | [**get_revenue_waterfall_report_v2**](docs/RevenueRecognitionApi.md#get_revenue_waterfall_report_v2) | **GET** /revrec/waterfall/v2 | Download waterfall report
*SubskribeSandboxClient::RevenueRecognitionApi* | [**upload_completion_events**](docs/RevenueRecognitionApi.md#upload_completion_events) | **POST** /revrec/events/upload | Upload revenue events
*SubskribeSandboxClient::SalesRoomApi* | [**get_order_document2**](docs/SalesRoomApi.md#get_order_document2) | **GET** /salesroom/{linkId}/pdf | Fetch order form PDF for a Sales Room
*SubskribeSandboxClient::SettingsApi* | [**activate_unit_of_measure**](docs/SettingsApi.md#activate_unit_of_measure) | **POST** /unitsOfMeasure/{id}/activate | Activate unit of measure
*SubskribeSandboxClient::SettingsApi* | [**add_tax_rate**](docs/SettingsApi.md#add_tax_rate) | **POST** /taxrates | Add tax rate
*SubskribeSandboxClient::SettingsApi* | [**add_term_section**](docs/SettingsApi.md#add_term_section) | **POST** /termsections | Add predefined terms section
*SubskribeSandboxClient::SettingsApi* | [**add_unit_of_measure**](docs/SettingsApi.md#add_unit_of_measure) | **POST** /unitsOfMeasure | Add unit of measure
*SubskribeSandboxClient::SettingsApi* | [**delete_tax_rate**](docs/SettingsApi.md#delete_tax_rate) | **DELETE** /taxrates/{id} | Delete tax rate
*SubskribeSandboxClient::SettingsApi* | [**delete_term_section**](docs/SettingsApi.md#delete_term_section) | **DELETE** /termsections/{id} | Delete predefined terms section
*SubskribeSandboxClient::SettingsApi* | [**delete_unit_of_measure**](docs/SettingsApi.md#delete_unit_of_measure) | **DELETE** /unitsOfMeasure/{id} | Delete unit of measure
*SubskribeSandboxClient::SettingsApi* | [**deprecate_unit_of_measure**](docs/SettingsApi.md#deprecate_unit_of_measure) | **POST** /unitsOfMeasure/{id}/deprecate | Deprecate unit of measure
*SubskribeSandboxClient::SettingsApi* | [**get_payment_term_settings**](docs/SettingsApi.md#get_payment_term_settings) | **GET** /settings/paymentTerms | Get payment term settings
*SubskribeSandboxClient::SettingsApi* | [**get_supported_currencies**](docs/SettingsApi.md#get_supported_currencies) | **GET** /settings/supportedCurrencies | Get supported currencies
*SubskribeSandboxClient::SettingsApi* | [**get_tax_rate**](docs/SettingsApi.md#get_tax_rate) | **GET** /taxrates/{id} | Get tax rate by Id
*SubskribeSandboxClient::SettingsApi* | [**get_tax_rates**](docs/SettingsApi.md#get_tax_rates) | **GET** /taxrates | Get tax rates
*SubskribeSandboxClient::SettingsApi* | [**get_tenant**](docs/SettingsApi.md#get_tenant) | **GET** /tenants | Get tenant details
*SubskribeSandboxClient::SettingsApi* | [**get_tenant_logo**](docs/SettingsApi.md#get_tenant_logo) | **GET** /tenants/logo | Get tenant logo
*SubskribeSandboxClient::SettingsApi* | [**get_tenant_setting**](docs/SettingsApi.md#get_tenant_setting) | **GET** /settings | Get tenant settings
*SubskribeSandboxClient::SettingsApi* | [**get_term_section**](docs/SettingsApi.md#get_term_section) | **GET** /termsections/{id} | Get predefined terms section detail
*SubskribeSandboxClient::SettingsApi* | [**get_term_sections**](docs/SettingsApi.md#get_term_sections) | **GET** /termsections | Get predefined terms sections
*SubskribeSandboxClient::SettingsApi* | [**get_units_of_measure**](docs/SettingsApi.md#get_units_of_measure) | **GET** /unitsOfMeasure | Get units of measure
*SubskribeSandboxClient::SettingsApi* | [**update_payment_term_settings**](docs/SettingsApi.md#update_payment_term_settings) | **PUT** /settings/paymentTerms | Update payment term settings
*SubskribeSandboxClient::SettingsApi* | [**update_supported_currencies**](docs/SettingsApi.md#update_supported_currencies) | **PUT** /settings/supportedCurrencies | Update supported currencies
*SubskribeSandboxClient::SettingsApi* | [**update_tax_rate**](docs/SettingsApi.md#update_tax_rate) | **PUT** /taxrates/{id} | Update tax rate
*SubskribeSandboxClient::SettingsApi* | [**update_tenant**](docs/SettingsApi.md#update_tenant) | **PUT** /tenants | Update tenant details
*SubskribeSandboxClient::SettingsApi* | [**update_tenant_setting**](docs/SettingsApi.md#update_tenant_setting) | **PUT** /settings | Update tenant settings
*SubskribeSandboxClient::SettingsApi* | [**update_term_section**](docs/SettingsApi.md#update_term_section) | **PUT** /termsections/{id} | Update predefined terms section
*SubskribeSandboxClient::SettingsApi* | [**update_unit_of_measure**](docs/SettingsApi.md#update_unit_of_measure) | **PUT** /unitsOfMeasure/{id} | Update unit of measure
*SubskribeSandboxClient::SettingsApi* | [**upload_tenant_logo**](docs/SettingsApi.md#upload_tenant_logo) | **PUT** /tenants/logo | Update tenant logo
*SubskribeSandboxClient::SubscriptionsApi* | [**delete_subscription**](docs/SubscriptionsApi.md#delete_subscription) | **DELETE** /subscriptions/{id}/{version} | Delete subscription
*SubskribeSandboxClient::SubscriptionsApi* | [**get_subscription_billing_periods**](docs/SubscriptionsApi.md#get_subscription_billing_periods) | **GET** /subscriptions/{id}/billingPeriods | Get billing periods
*SubskribeSandboxClient::SubscriptionsApi* | [**get_subscription_by_id**](docs/SubscriptionsApi.md#get_subscription_by_id) | **GET** /subscriptions/{id} | Get subscription details
*SubskribeSandboxClient::SubscriptionsApi* | [**get_subscription_metrics**](docs/SubscriptionsApi.md#get_subscription_metrics) | **GET** /subscriptions/{id}/metrics | Get subscription metrics
*SubskribeSandboxClient::SubscriptionsApi* | [**get_subscriptions**](docs/SubscriptionsApi.md#get_subscriptions) | **GET** /subscriptions | Get paginated subscriptions
*SubskribeSandboxClient::SubscriptionsApi* | [**revert_subscription**](docs/SubscriptionsApi.md#revert_subscription) | **PUT** /subscriptions/{id}/{version}/revert | Revert subscription
*SubskribeSandboxClient::SubscriptionsApi* | [**subscription_modifiable**](docs/SubscriptionsApi.md#subscription_modifiable) | **GET** /subscriptions/{id}/modifiable | Subscription can be modified
*SubskribeSandboxClient::SubscriptionsApi* | [**subscription_reversible**](docs/SubscriptionsApi.md#subscription_reversible) | **GET** /subscriptions/{id}/reversible | Subscription can be reverted
*SubskribeSandboxClient::SubscriptionsApi* | [**update_renewal_opportunity**](docs/SubscriptionsApi.md#update_renewal_opportunity) | **POST** /subscriptions/{id}/renewalOpportunity | Link renewal opportunity to subscription
*SubskribeSandboxClient::SubscriptionsApi* | [**update_subscription**](docs/SubscriptionsApi.md#update_subscription) | **PUT** /subscriptions/{id} | Update subscription details
*SubskribeSandboxClient::UsageApi* | [**add_and_apply_bulk_payments_csv**](docs/UsageApi.md#add_and_apply_bulk_payments_csv) | **POST** /settlements/addAndApplyPaymentsInBulk/csv | Add and apply bulk payments to invoices CSV
*SubskribeSandboxClient::UsageApi* | [**add_usage**](docs/UsageApi.md#add_usage) | **POST** /v2/usage | Add usage record
*SubskribeSandboxClient::UsageApi* | [**get_usage_aggregates_for_subscription**](docs/UsageApi.md#get_usage_aggregates_for_subscription) | **GET** /v2/usage/{subscriptionId} | Get aggregated usage
*SubskribeSandboxClient::UsageApi* | [**get_usage_arrival_time_checkpoint**](docs/UsageApi.md#get_usage_arrival_time_checkpoint) | **GET** /v2/usage/aggregate/usageArrivalTimeCheckpoint | Get usage arrival checkpoint
*SubskribeSandboxClient::UsageApi* | [**get_usage_stats_for_all_subscriptions**](docs/UsageApi.md#get_usage_stats_for_all_subscriptions) | **GET** /v2/usage/stats | Get all prepaid drawdown usage stats
*SubskribeSandboxClient::UsageApi* | [**get_usage_stats_for_all_subscriptions_csv**](docs/UsageApi.md#get_usage_stats_for_all_subscriptions_csv) | **GET** /v2/usage/stats/csv | Get all prepaid drawdown usage stats CSV
*SubskribeSandboxClient::UsageApi* | [**get_usage_stats_for_subscription**](docs/UsageApi.md#get_usage_stats_for_subscription) | **GET** /v2/usage/stats/{subscriptionId} | Get prepaid drawdown usage stats for subscription
*SubskribeSandboxClient::UsageApi* | [**get_usage_stats_for_subscription_csv**](docs/UsageApi.md#get_usage_stats_for_subscription_csv) | **GET** /v2/usage/stats/{subscriptionId}/csv | Get prepaid drawdown usage stats CSV
*SubskribeSandboxClient::UsageApi* | [**get_usage_stats_for_subscription_pdf**](docs/UsageApi.md#get_usage_stats_for_subscription_pdf) | **GET** /v2/usage/stats/{subscriptionId}/pdf | Get prepaid drawdown usage stats PDF
*SubskribeSandboxClient::UsageApi* | [**perform_on_demand_usage_aggregation**](docs/UsageApi.md#perform_on_demand_usage_aggregation) | **PUT** /v2/usage/aggregate | Aggregate raw usage
*SubskribeSandboxClient::UsageApi* | [**upload_subscription_usage_csv**](docs/UsageApi.md#upload_subscription_usage_csv) | **POST** /v2/usage/csv | Upload usage record CSV
*SubskribeSandboxClient::UsersApi* | [**accept_terms_for_current_user**](docs/UsersApi.md#accept_terms_for_current_user) | **POST** /users/terms-and-conditions | Accept terms and conditions
*SubskribeSandboxClient::UsersApi* | [**add_user**](docs/UsersApi.md#add_user) | **POST** /users | Add a new user
*SubskribeSandboxClient::UsersApi* | [**add_user_group**](docs/UsersApi.md#add_user_group) | **POST** /userGroups | Add user group
*SubskribeSandboxClient::UsersApi* | [**delete_user_group**](docs/UsersApi.md#delete_user_group) | **DELETE** /userGroups/{userGroupId} | Delete user group
*SubskribeSandboxClient::UsersApi* | [**disable_user**](docs/UsersApi.md#disable_user) | **PUT** /users/disable/{id} | Disable user
*SubskribeSandboxClient::UsersApi* | [**enable_user**](docs/UsersApi.md#enable_user) | **PUT** /users/enable/{id} | Enable user
*SubskribeSandboxClient::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /users/{id} | Get user by Id
*SubskribeSandboxClient::UsersApi* | [**get_user_group**](docs/UsersApi.md#get_user_group) | **GET** /userGroups/{userGroupId} | Get user group
*SubskribeSandboxClient::UsersApi* | [**get_user_groups**](docs/UsersApi.md#get_user_groups) | **GET** /userGroups | Get user groups
*SubskribeSandboxClient::UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **GET** /users | Get users list
*SubskribeSandboxClient::UsersApi* | [**resend_email_for_existing_user**](docs/UsersApi.md#resend_email_for_existing_user) | **POST** /users/resend-email/{email} | Resend welcome email
*SubskribeSandboxClient::UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PUT** /users/{id} | Update user
*SubskribeSandboxClient::UsersApi* | [**update_user_group**](docs/UsersApi.md#update_user_group) | **PUT** /userGroups | Update user group
*SubskribeSandboxClient::UsersApi* | [**upload_csv**](docs/UsersApi.md#upload_csv) | **POST** /users/upload | Bulk user upload


### Authentication

All api requests should be provided with an API key in the config, as shown below:

```ruby
require 'subskribe_sandbox_client'

```

### Notes

The API endpoints are documented at https://docs.subskribe.com

This SDK is generated using the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project
