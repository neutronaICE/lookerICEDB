view: quote_sales {
  sql_table_name: dbo.QuoteSales ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: activation {
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
    sql: ${TABLE}.ActivationDate ;;
  }

  dimension: activation_period {
    type: string
    sql: ${TABLE}.ActivationPeriod ;;
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

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.CancelReason ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: commercial_login {
    type: string
    sql: ${TABLE}.CommercialLogin ;;
  }

  dimension: complexities {
    type: string
    sql: ${TABLE}.Complexities ;;
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

  dimension: customer_contacts {
    type: string
    sql: ${TABLE}.CustomerContacts ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DiscountID ;;
  }

  dimension_group: efocdate {
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
    sql: ${TABLE}.EFOCDate ;;
  }

  dimension_group: efocdate_change {
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
    sql: ${TABLE}.EFOCDateChangeTime ;;
  }

  dimension_group: efocdate_public {
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
    sql: ${TABLE}.EFOCDatePublic ;;
  }

  dimension: efocdate_reason {
    type: string
    sql: ${TABLE}.EFOCDateReason ;;
  }

  dimension: end_customer {
    type: string
    sql: ${TABLE}.EndCustomer ;;
  }

  dimension: fields {
    type: string
    sql: ${TABLE}.Fields ;;
  }

  dimension_group: first_quote {
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
    sql: ${TABLE}.FirstQuoteDate ;;
  }

  dimension_group: focdate {
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
    sql: ${TABLE}.FOCDate ;;
  }

  dimension: geo_type {
    type: string
    sql: ${TABLE}.GeoType ;;
  }

  dimension: hold_reason {
    type: string
    sql: ${TABLE}.HoldReason ;;
  }

  dimension: is_uni {
    type: string
    sql: ${TABLE}.IsUNI ;;
  }

  dimension_group: issue {
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
    sql: ${TABLE}.IssueDate ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.Lng ;;
  }

  dimension: local_contact {
    type: string
    sql: ${TABLE}.LocalContact ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nni {
    type: string
    sql: ${TABLE}.NNI ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: notify_pending {
    type: number
    sql: ${TABLE}.NotifyPending ;;
  }

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
  }

  dimension: nrr {
    type: string
    sql: ${TABLE}.NRR ;;
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

  dimension: old_service_id {
    type: number
    sql: ${TABLE}.OldServiceID ;;
  }

  dimension: partner_sid {
    type: string
    sql: ${TABLE}.PartnerSID ;;
  }

  dimension: price_manager_login {
    type: string
    sql: ${TABLE}.PriceManagerLogin ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: quote_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteItemID ;;
  }

  dimension: quote_items {
    type: string
    sql: ${TABLE}.QuoteItems ;;
  }

  dimension_group: request {
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
    sql: ${TABLE}.RequestDate ;;
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

  dimension: sale_mode {
    type: string
    sql: ${TABLE}.SaleMode ;;
  }

  dimension: sale_period {
    type: string
    sql: ${TABLE}.SalePeriod ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SaleType ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension_group: service_breakage {
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
    sql: ${TABLE}.ServiceBreakageDate ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension_group: service_install {
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
    sql: ${TABLE}.ServiceInstallDate ;;
  }

  dimension: show_all_prices {
    type: string
    sql: ${TABLE}.ShowAllPrices ;;
  }

  dimension_group: sofsend {
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
    sql: ${TABLE}.SOFSendDate ;;
  }

  dimension_group: sofsign {
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
    sql: ${TABLE}.SOFSignDate ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension_group: state_change {
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
    sql: ${TABLE}.StateChangeDate ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SubsidiaryID ;;
  }

  dimension: test_days {
    type: number
    sql: ${TABLE}.TestDays ;;
  }

  dimension: try_and_buy {
    type: string
    sql: ${TABLE}.TryAndBuy ;;
  }

  dimension_group: wrike_creation {
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
    sql: ${TABLE}.WrikeCreationTime ;;
  }

  dimension: wrike_id {
    type: string
    sql: ${TABLE}.WrikeID ;;
  }

  dimension_group: wrike_last_due {
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
    sql: ${TABLE}.WrikeLastDue ;;
  }

  dimension: wrike_link {
    type: string
    sql: ${TABLE}.WrikeLink ;;
  }

  dimension: wrike_task_pendings {
    type: number
    sql: ${TABLE}.WrikeTaskPendings ;;
  }

  dimension: wrike_task_pendings_hours {
    type: number
    sql: ${TABLE}.WrikeTaskPendingsHours ;;
  }

  dimension: wrike_task_total {
    type: number
    sql: ${TABLE}.WrikeTaskTotal ;;
  }

  dimension: wrike_task_total_hours {
    type: number
    sql: ${TABLE}.WrikeTaskTotalHours ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      quotes.id,
      quotes.name,
      customers.id,
      customers.name,
      customers.group_name,
      products.id,
      products.name,
      quote_items.id,
      discounts.id,
      discounts.name,
      services.id,
      quote_sale_address_logs.count,
      quote_sale_quote_items.count,
      sale_order_component_logs.count,
      sale_order_components.count
    ]
  }
}
