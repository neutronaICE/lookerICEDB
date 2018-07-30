view: purchase_orders {
  sql_table_name: dbo.PurchaseOrders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: approve {
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
    sql: ${TABLE}.ApproveDate ;;
  }

  dimension_group: confirm {
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
    sql: ${TABLE}.ConfirmDate ;;
  }

  dimension: cost_center_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CostCenterID ;;
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

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.ProjectName ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderID ;;
  }

  dimension: provider_reference {
    type: string
    sql: ${TABLE}.ProviderReference ;;
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

  dimension: request_login {
    type: string
    sql: ${TABLE}.RequestLogin ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension_group: sign {
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
    sql: ${TABLE}.SignDate ;;
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

  dimension: tax {
    type: string
    sql: ${TABLE}.TAX ;;
  }

  dimension: total_amount {
    type: string
    sql: ${TABLE}.TotalAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      project_name,
      providers.id,
      providers.name,
      providers.legal_name,
      cost_centers.id,
      cost_centers.name,
      services.id,
      purchase_order_items.count,
      purchase_order_signs.count
    ]
  }
}
