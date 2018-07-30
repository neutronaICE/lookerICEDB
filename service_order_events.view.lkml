view: service_order_events {
  sql_table_name: dbo.ServiceOrderEvents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: action {
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
    sql: ${TABLE}.ActionDate ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.Contact ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
  }

  dimension: response_id {
    type: number
    sql: ${TABLE}.ResponseID ;;
  }

  dimension_group: response {
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
    sql: ${TABLE}.ResponseTime ;;
  }

  dimension: service_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, service_orders.id, service_orders.name]
  }
}
