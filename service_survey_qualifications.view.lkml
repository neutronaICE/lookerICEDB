view: service_survey_qualifications {
  sql_table_name: dbo.ServiceSurveyQualifications ;;

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

  dimension: qualification1 {
    type: string
    sql: ${TABLE}.Qualification1 ;;
  }

  dimension: qualification2 {
    type: string
    sql: ${TABLE}.Qualification2 ;;
  }

  dimension: qualification3 {
    type: string
    sql: ${TABLE}.Qualification3 ;;
  }

  dimension: qualification4 {
    type: string
    sql: ${TABLE}.Qualification4 ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.Question ;;
  }

  dimension: survey_id {
    type: number
    sql: ${TABLE}.SurveyID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
