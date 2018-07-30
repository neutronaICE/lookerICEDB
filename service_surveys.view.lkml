view: service_surveys {
  sql_table_name: dbo.ServiceSurveys ;;

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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: q1_name {
    type: string
    sql: ${TABLE}.Q1Name ;;
  }

  dimension: q2_name {
    type: string
    sql: ${TABLE}.Q2Name ;;
  }

  dimension: q3_name {
    type: string
    sql: ${TABLE}.Q3Name ;;
  }

  dimension: q4_name {
    type: string
    sql: ${TABLE}.Q4Name ;;
  }

  dimension: q5_name {
    type: string
    sql: ${TABLE}.Q5Name ;;
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
      q1_name,
      q2_name,
      q3_name,
      q4_name,
      q5_name
    ]
  }
}
