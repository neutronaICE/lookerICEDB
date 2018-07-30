view: quote_actions {
  sql_table_name: dbo.QuoteActions ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: notifications {
    type: string
    sql: ${TABLE}.Notifications ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
