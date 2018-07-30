view: quote_sale_events {
  sql_table_name: dbo.QuoteSaleEvents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension_group: event {
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
    sql: ${TABLE}.EventTime ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
  }

  dimension: sale_order_id {
    type: number
    sql: ${TABLE}.SaleOrderID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
