view: service_order_actions {
  sql_table_name: dbo.ServiceOrderActions ;;

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

  dimension: action_login {
    type: string
    sql: ${TABLE}.ActionLogin ;;
  }

  dimension: action_time {
    type: string
    sql: ${TABLE}.ActionTime ;;
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

  dimension: service_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, service_orders.id, service_orders.name]
  }
}
