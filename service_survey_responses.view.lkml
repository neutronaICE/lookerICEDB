view: service_survey_responses {
  sql_table_name: dbo.ServiceSurveyResponses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
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

  dimension: improvement_comment {
    type: string
    sql: ${TABLE}.ImprovementComment ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
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

  dimension: q1_value {
    type: number
    sql: ${TABLE}.Q1Value ;;
  }

  dimension: q2_value {
    type: number
    sql: ${TABLE}.Q2Value ;;
  }

  dimension: q3_value {
    type: number
    sql: ${TABLE}.Q3Value ;;
  }

  dimension: q4_value {
    type: number
    sql: ${TABLE}.Q4Value ;;
  }

  dimension: q5_value {
    type: number
    sql: ${TABLE}.Q5Value ;;
  }

  dimension: quote_point_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuotePointID ;;
  }

  dimension_group: response {
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
    sql: ${TABLE}.ResponseTime ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: survey_id {
    type: number
    sql: ${TABLE}.SurveyID ;;
  }

  dimension: ticket_number {
    type: string
    sql: ${TABLE}.TicketNumber ;;
  }

  dimension: user_login {
    type: string
    sql: ${TABLE}.UserLogin ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      carriers.id,
      carriers.name,
      quote_points.id,
      quote_points.name,
      services.id
    ]
  }
}
