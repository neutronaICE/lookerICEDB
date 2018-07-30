view: quote_events {
  sql_table_name: dbo.QuoteEvents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: event_login {
    type: string
    sql: ${TABLE}.EventLogin ;;
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

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: mode {
    type: string
    sql: ${TABLE}.Mode ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: quote_state {
    type: string
    sql: ${TABLE}.QuoteState ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartTime ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
  }

  measure: count {
    type: count
    drill_fields: [id, quotes.id, quotes.name]
  }
}
