view: v_quote_opportunity_requests {
  sql_table_name: dbo.v_QuoteOpportunityRequests ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: confirm_id {
    type: number
    sql: ${TABLE}.ConfirmID ;;
  }

  dimension_group: confirm {
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
    sql: ${TABLE}.ConfirmTime ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: event_login {
    type: string
    sql: ${TABLE}.EventLogin ;;
  }

  dimension_group: first_day_of_week {
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
    sql: ${TABLE}.FirstDayOfWeek ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: quote_point_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuotePointID ;;
  }

  dimension: request_login {
    type: string
    sql: ${TABLE}.RequestLogin ;;
  }

  dimension_group: request {
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
    sql: ${TABLE}.RequestTime ;;
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

  dimension: submit_id {
    type: number
    sql: ${TABLE}.SubmitID ;;
  }

  dimension: submit_login {
    type: string
    sql: ${TABLE}.SubmitLogin ;;
  }

  dimension_group: submit {
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
    sql: ${TABLE}.SubmitTime ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      customers.id,
      customers.name,
      customers.group_name,
      quotes.id,
      quotes.name,
      quote_points.id,
      quote_points.name
    ]
  }
}
