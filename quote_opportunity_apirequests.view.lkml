view: quote_opportunity_apirequests {
  sql_table_name: dbo.QuoteOpportunityAPIRequests ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: confirm_login {
    type: string
    sql: ${TABLE}.ConfirmLogin ;;
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

  dimension: revision {
    type: number
    sql: ${TABLE}.Revision ;;
  }

  dimension_group: start_request {
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
    sql: ${TABLE}.StartRequestTime ;;
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

  dimension_group: week {
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
    sql: ${TABLE}.WeekDate ;;
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
