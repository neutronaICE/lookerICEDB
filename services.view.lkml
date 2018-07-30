view: services {
  sql_table_name: dbo.Services ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: activate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ActivateDate ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: bandwidth {
    type: number
    sql: ${TABLE}.Bandwidth ;;
  }

  dimension: billing_day {
    type: number
    sql: ${TABLE}.BillingDay ;;
  }

  dimension_group: cancel {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CancelDate ;;
  }

  dimension: cancel_reason_id {
    type: number
    sql: ${TABLE}.CancelReasonID ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: contract_month {
    type: number
    sql: ${TABLE}.ContractMonth ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: creation_login {
    type: string
    sql: ${TABLE}.CreationLogin ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreationTime ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: currency_rate {
    type: string
    sql: ${TABLE}.CurrencyRate ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: deferred_type {
    type: string
    sql: ${TABLE}.DeferredType ;;
  }

  dimension: end_customer {
    type: string
    sql: ${TABLE}.EndCustomer ;;
  }

  dimension: exclude_billing {
    type: string
    sql: ${TABLE}.ExcludeBilling ;;
  }

  dimension_group: expected_cancelation {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ExpectedCancelationDate ;;
  }

  dimension_group: expiration {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ExpirationDate ;;
  }

  dimension_group: first_activate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstActivateDate ;;
  }

  dimension_group: first_billing {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FirstBillingDate ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.Frequency ;;
  }

  dimension: geo_type {
    type: string
    sql: ${TABLE}.GeoType ;;
  }

  dimension: is_internal {
    type: string
    sql: ${TABLE}.IsInternal ;;
  }

  dimension: is_offnet {
    type: string
    sql: ${TABLE}.IsOffnet ;;
  }

  dimension: is_vip {
    type: string
    sql: ${TABLE}.IsVIP ;;
  }

  dimension_group: last_billing {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastBillingDate ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.Lng ;;
  }

  dimension: modify_login {
    type: string
    sql: ${TABLE}.ModifyLogin ;;
  }

  dimension_group: modify {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ModifyTime ;;
  }

  dimension: mrc {
    type: string
    sql: ${TABLE}.MRC ;;
  }

  dimension: mrcbb {
    type: string
    sql: ${TABLE}.MRCBB ;;
  }

  dimension: mrr {
    type: string
    sql: ${TABLE}.MRR ;;
  }

  dimension: mrraccount_id {
    type: number
    sql: ${TABLE}.MRRAccountID ;;
  }

  dimension: nni {
    type: string
    sql: ${TABLE}.NNI ;;
  }

  dimension: nni2 {
    type: string
    sql: ${TABLE}.NNI2 ;;
  }

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
  }

  dimension: nrr {
    type: string
    sql: ${TABLE}.NRR ;;
  }

  dimension: nrraccount_id {
    type: number
    sql: ${TABLE}.NRRAccountID ;;
  }

  dimension: old_bandwidth {
    type: number
    sql: ${TABLE}.OldBandwidth ;;
  }

  dimension: old_mrc {
    type: string
    sql: ${TABLE}.OldMRC ;;
  }

  dimension: old_mrr {
    type: string
    sql: ${TABLE}.OldMRR ;;
  }

  dimension: old_nrc {
    type: string
    sql: ${TABLE}.OldNRC ;;
  }

  dimension: old_nrr {
    type: string
    sql: ${TABLE}.OldNRR ;;
  }

  dimension: popid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.POPID ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension_group: programmed_cancel {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ProgrammedCancelDate ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: quote_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteItemID ;;
  }

  dimension_group: sale {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SaleDate ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SaleType ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SubsidiaryID ;;
  }

  dimension: tax_factor {
    type: number
    sql: ${TABLE}.TaxFactor ;;
  }

  dimension: taxes {
    type: string
    sql: ${TABLE}.Taxes ;;
  }

  dimension: technical_fields {
    type: string
    sql: ${TABLE}.TechnicalFields ;;
  }

  dimension: test_days {
    type: number
    sql: ${TABLE}.TestDays ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      customers.id,
      customers.name,
      customers.group_name,
      quote_items.id,
      products.id,
      products.name,
      pops.id,
      pops.name,
      carriers.id,
      carriers.name,
      _tmp_service_bw.count,
      agreements.count,
      bill_items.count,
      commision_settlements.count,
      commission_settlements.count,
      contact_logs.count,
      contacts.count,
      contact_services.count,
      customer_documents.count,
      inventory_items.count,
      invoice_items.count,
      mails.count,
      manual_charges.count,
      manual_credit_memos.count,
      manual_invoices.count,
      nnis_customers.count,
      nnis_providers.count,
      purchase_orders.count,
      quote_points.count,
      quote_sales.count,
      quote_sales_backup.count,
      r_service_components.count,
      sales.count,
      service_component_logs.count,
      service_component_negotiation_items.count,
      service_component_negotiation_logs.count,
      service_components.count,
      service_contact_logs.count,
      service_contacts.count,
      service_customer_changes.count,
      service_documents.count,
      service_logs.count,
      service_orders.count,
      service_survey_responses.count,
      service_taxes.count,
      tasks.count
    ]
  }
}
