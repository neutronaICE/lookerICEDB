view: service_order_expenses {
  sql_table_name: dbo.ServiceOrderExpenses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension_group: execution {
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
    sql: ${TABLE}.ExecutionDate ;;
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

  dimension: service_order_expense_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderExpenseTypeID ;;
  }

  dimension: service_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderID ;;
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
    drill_fields: [id, service_orders.id, service_orders.name, service_order_expense_types.id, service_order_expense_types.name]
  }
}
