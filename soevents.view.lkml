view: soevents {
  sql_table_name: dbo.SOEvents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: contact_to {
    type: string
    sql: ${TABLE}.ContactTo ;;
  }

  dimension: delay_reason {
    type: string
    sql: ${TABLE}.DelayReason ;;
  }

  dimension: delay_responsability {
    type: string
    sql: ${TABLE}.DelayResponsability ;;
  }

  dimension: event_number {
    type: number
    sql: ${TABLE}.EventNumber ;;
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

  dimension: fairesponsability {
    type: string
    sql: ${TABLE}.FAIResponsability ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension_group: local_loop_instalation_project_charter {
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
    sql: ${TABLE}.LocalLoopInstalationProjectCharterDate ;;
  }

  dimension_group: local_loop_instalation_rfcdate {
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
    sql: ${TABLE}.LocalLoopInstalationRFCDate ;;
  }

  dimension_group: local_loop_instalation_site_survey_report {
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
    sql: ${TABLE}.LocalLoopInstalationSiteSurveyReportDate ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
  }

  dimension_group: new_action {
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
    sql: ${TABLE}.NewActionDate ;;
  }

  dimension: new_status_id {
    type: number
    sql: ${TABLE}.NewStatusID ;;
  }

  dimension: new_sub_status_comments {
    type: string
    sql: ${TABLE}.NewSubStatusComments ;;
  }

  dimension: new_sub_status_id {
    type: number
    sql: ${TABLE}.NewSubStatusID ;;
  }

  dimension: private_comments {
    type: string
    sql: ${TABLE}.PrivateComments ;;
  }

  dimension: public_comments {
    type: string
    sql: ${TABLE}.PublicComments ;;
  }

  dimension_group: service_configuration_faifrom {
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
    sql: ${TABLE}.ServiceConfigurationFAIFromDate ;;
  }

  dimension_group: service_configuration_faito {
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
    sql: ${TABLE}.ServiceConfigurationFAIToDate ;;
  }

  dimension: soid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.SOID ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusID ;;
  }

  dimension: sub_status_comments {
    type: string
    sql: ${TABLE}.SubStatusComments ;;
  }

  dimension: sub_status_id {
    type: number
    sql: ${TABLE}.SubStatusID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sos.id]
  }
}
