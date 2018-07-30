view: service_order_task_types {
  sql_table_name: dbo.ServiceOrderTaskTypes ;;

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

  dimension: estimate_days {
    type: number
    sql: ${TABLE}.EstimateDays ;;
  }

  dimension: is_public {
    type: string
    sql: ${TABLE}.IsPublic ;;
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

  dimension: pos {
    type: number
    sql: ${TABLE}.Pos ;;
  }

  dimension: service_order_stage_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderStageID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
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
      service_order_stages.id,
      service_order_stages.name,
      service_order_task_logs.count,
      service_order_tasks.count,
      sostatus_tracker.count
    ]
  }
}
