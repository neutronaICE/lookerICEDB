view: service_orders {
  sql_table_name: dbo.ServiceOrders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension_group: assign {
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
    sql: ${TABLE}.AssignTime ;;
  }

  dimension: assign_to {
    type: string
    sql: ${TABLE}.AssignTo ;;
  }

  dimension: bandwidth {
    type: number
    sql: ${TABLE}.Bandwidth ;;
  }

  dimension: carrier_contacts {
    type: string
    sql: ${TABLE}.CarrierContacts ;;
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

  dimension: customer_contacts {
    type: string
    sql: ${TABLE}.CustomerContacts ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: end_customer {
    type: string
    sql: ${TABLE}.EndCustomer ;;
  }

  dimension_group: estimate_delivery {
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
    sql: ${TABLE}.EstimateDeliveryDate ;;
  }

  dimension: fields {
    type: string
    sql: ${TABLE}.Fields ;;
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

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension_group: llpfocdate {
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
    sql: ${TABLE}.LLPFOCDate ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nni {
    type: string
    sql: ${TABLE}.NNI ;;
  }

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
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

  dimension: progress {
    type: number
    sql: ${TABLE}.Progress ;;
  }

  dimension: quote_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteItemID ;;
  }

  dimension: service_contacts {
    type: string
    sql: ${TABLE}.ServiceContacts ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: service_order_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderTypeID ;;
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.StateChangeTime ;;
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
      service_order_types.id,
      service_order_types.name,
      customers.id,
      customers.name,
      customers.group_name,
      quote_items.id,
      services.id,
      products.id,
      products.name,
      pops.id,
      pops.name,
      carriers.id,
      carriers.name,
      service_documents.count,
      service_order_actions.count,
      service_order_events.count,
      service_order_expenses.count,
      service_order_risk_logs.count,
      service_order_risks.count,
      service_order_task_logs.count,
      service_order_tasks.count
    ]
  }
}
