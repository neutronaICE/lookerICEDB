view: sos {
  sql_table_name: dbo.SOs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: contacts {
    type: string
    sql: ${TABLE}.Contacts ;;
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

  dimension_group: event {
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
    sql: ${TABLE}.EventTime ;;
  }

  dimension: hold_reason {
    type: string
    sql: ${TABLE}.HoldReason ;;
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

  dimension_group: next_action {
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
    sql: ${TABLE}.NextActionDate ;;
  }

  dimension: sale_order_id {
    type: number
    sql: ${TABLE}.SaleOrderID ;;
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

  dimension_group: service_delivery_manager_assign {
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
    sql: ${TABLE}.ServiceDeliveryManagerAssignTime ;;
  }

  dimension: service_delivery_manager_login {
    type: string
    sql: ${TABLE}.ServiceDeliveryManagerLogin ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusID ;;
  }

  dimension: status_tracker_comments {
    type: string
    sql: ${TABLE}.StatusTrackerComments ;;
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
    drill_fields: [id, mails.count, soevents.count, sostatus_tracker.count, sosuscription.count]
  }
}
