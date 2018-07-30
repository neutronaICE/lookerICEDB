view: quotes {
  sql_table_name: dbo.Quotes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: accept {
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
    sql: ${TABLE}.AcceptDate ;;
  }

  dimension: arr {
    type: string
    sql: ${TABLE}.ARR ;;
  }

  dimension: authorize_login {
    type: string
    sql: ${TABLE}.AuthorizeLogin ;;
  }

  dimension_group: authorize {
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
    sql: ${TABLE}.AuthorizeTime ;;
  }

  dimension: bandwidths {
    type: string
    sql: ${TABLE}.Bandwidths ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: commercial_category {
    type: string
    sql: ${TABLE}.CommercialCategory ;;
  }

  dimension: commercial_login {
    type: string
    sql: ${TABLE}.CommercialLogin ;;
  }

  dimension: commercial_status_id {
    type: number
    sql: ${TABLE}.CommercialStatusID ;;
  }

  dimension_group: commercial_status {
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
    sql: ${TABLE}.CommercialStatusTime ;;
  }

  dimension: contract_months {
    type: string
    sql: ${TABLE}.ContractMonths ;;
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

  dimension_group: due {
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
    sql: ${TABLE}.DueDate ;;
  }

  dimension_group: finalized {
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
    sql: ${TABLE}.FinalizedDate ;;
  }

  dimension_group: first_send {
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
    sql: ${TABLE}.FirstSendDate ;;
  }

  dimension: is_hot {
    type: string
    sql: ${TABLE}.IsHot ;;
  }

  dimension: is_rfp {
    type: string
    sql: ${TABLE}.IsRFP ;;
  }

  dimension: is_whale {
    type: string
    sql: ${TABLE}.IsWhale ;;
  }

  dimension_group: last_send {
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
    sql: ${TABLE}.LastSendDate ;;
  }

  dimension: mode {
    type: string
    sql: ${TABLE}.Mode ;;
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

  dimension: mrr {
    type: string
    sql: ${TABLE}.MRR ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: name2 {
    type: string
    sql: ${TABLE}.Name2 ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: nrr {
    type: string
    sql: ${TABLE}.NRR ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.ParentID ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.Points ;;
  }

  dimension: price_manager_login {
    type: string
    sql: ${TABLE}.PriceManagerLogin ;;
  }

  dimension: price_manual_change_flag {
    type: string
    sql: ${TABLE}.PriceManualChangeFlag ;;
  }

  dimension: price_risk {
    type: number
    sql: ${TABLE}.PriceRisk ;;
  }

  dimension: pricing_text {
    type: string
    sql: ${TABLE}.PricingText ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.Products ;;
  }

  dimension: reject_reason_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RejectReasonID ;;
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

  dimension: request_firm {
    type: string
    sql: ${TABLE}.RequestFirm ;;
  }

  dimension: request_text {
    type: string
    sql: ${TABLE}.RequestText ;;
  }

  dimension: response_text {
    type: string
    sql: ${TABLE}.ResponseText ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SaleType ;;
  }

  dimension: sales_contact_id {
    type: number
    sql: ${TABLE}.SalesContactID ;;
  }

  dimension: sarequest {
    type: string
    sql: ${TABLE}.SARequest ;;
  }

  dimension: saresponse {
    type: string
    sql: ${TABLE}.SAResponse ;;
  }

  dimension: show_all_prices {
    type: string
    sql: ${TABLE}.ShowAllPrices ;;
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

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
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
      customers.id,
      customers.name,
      customers.group_name,
      reject_reasons.id,
      reject_reasons.name,
      discounts.id,
      discounts.name,
      _quote_devices.count,
      _quote_point_maxs.count,
      _quote_point_mins.count,
      access_prices.count,
      apinitel_quote_requests.count,
      apiquote_notifications.count,
      carrier_requests.count,
      komitems.count,
      koms.count,
      mails.count,
      quote_confirms.count,
      quote_documents.count,
      quote_events.count,
      quote_item_properties.count,
      quote_items.count,
      quote_item_versions.count,
      quote_notification_send_queues.count,
      quote_opportunities.count,
      quote_opportunity_apirequests.count,
      quote_opportunity_requests.count,
      quote_pdfs.count,
      quote_point_min_maxs.count,
      quote_point_resume_mins.count,
      quote_point_resumes.count,
      quote_points.count,
      quote_reviews.count,
      quote_sale_quote_items.count,
      quote_sales.count,
      quote_sales_backup.count,
      quote_sings.count,
      quote_submits.count,
      r_quotations.count,
      r_quote_sales.count,
      sales.count,
      tasks.count,
      v_quote_opportunity_requests.count
    ]
  }
}
