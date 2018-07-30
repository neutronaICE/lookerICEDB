view: discounts {
  sql_table_name: dbo.Discounts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: max_points {
    type: number
    sql: ${TABLE}.MaxPoints ;;
  }

  dimension: min_points {
    type: number
    sql: ${TABLE}.MinPoints ;;
  }

  dimension: mrcdiscount {
    type: string
    sql: ${TABLE}.MRCDiscount ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nrcdiscount {
    type: string
    sql: ${TABLE}.NRCDiscount ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
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
      quote_items.count,
      quotes.count,
      quote_sales.count,
      quote_sales_backup.count
    ]
  }
}
