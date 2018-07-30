view: sale_order_components {
  sql_table_name: dbo.SaleOrderComponents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: bandwidth {
    type: number
    sql: ${TABLE}.Bandwidth ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: contract_month {
    type: number
    sql: ${TABLE}.ContractMonth ;;
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

  dimension: device_code {
    type: string
    sql: ${TABLE}.DeviceCode ;;
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

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
  }

  dimension: quote_sale_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteSaleID ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.Reference ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      quote_sales.id,
      quote_sales.name,
      carriers.id,
      carriers.name,
      sale_order_component_logs.count
    ]
  }
}
