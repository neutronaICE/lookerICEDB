view: quote_notifications {
  sql_table_name: dbo.QuoteNotifications ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
  }

  dimension: quote_state {
    type: string
    sql: ${TABLE}.QuoteState ;;
  }

  dimension: show_all {
    type: string
    sql: ${TABLE}.ShowAll ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
