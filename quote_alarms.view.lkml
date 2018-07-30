view: quote_alarms {
  sql_table_name: dbo.QuoteAlarms ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: days {
    type: number
    sql: ${TABLE}.Days ;;
  }

  dimension: is_due_date {
    type: string
    sql: ${TABLE}.IsDueDate ;;
  }

  dimension_group: last_alarm {
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
    sql: ${TABLE}.LastAlarmDate ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
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
