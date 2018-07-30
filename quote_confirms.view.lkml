view: quote_confirms {
  sql_table_name: dbo.QuoteConfirms ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: days {
    type: number
    sql: ${TABLE}.Days ;;
  }

  dimension: opportunities {
    type: number
    sql: ${TABLE}.Opportunities ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension_group: request {
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
    sql: ${TABLE}.RequestDate ;;
  }

  dimension: request_period {
    type: string
    sql: ${TABLE}.RequestPeriod ;;
  }

  dimension: request_trim {
    type: string
    sql: ${TABLE}.RequestTrim ;;
  }

  dimension_group: submit {
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
    sql: ${TABLE}.SubmitDate ;;
  }

  dimension: submit_login {
    type: string
    sql: ${TABLE}.SubmitLogin ;;
  }

  dimension: submit_period {
    type: string
    sql: ${TABLE}.SubmitPeriod ;;
  }

  dimension: submit_period_trim {
    type: string
    sql: ${TABLE}.SubmitPeriodTrim ;;
  }

  dimension: submit_revision {
    type: number
    sql: ${TABLE}.SubmitRevision ;;
  }

  dimension: submit_user_name {
    type: string
    sql: ${TABLE}.SubmitUserName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      submit_user_name,
      customers.id,
      customers.name,
      customers.group_name,
      quotes.id,
      quotes.name
    ]
  }
}
