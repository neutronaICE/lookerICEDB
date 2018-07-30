view: terms {
  sql_table_name: dbo.Terms ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: terms {
    type: string
    sql: ${TABLE}.Terms ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, customer_logs.count, customers.count]
  }
}
