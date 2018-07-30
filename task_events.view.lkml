view: task_events {
  sql_table_name: dbo.TaskEvents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: assign_login {
    type: string
    sql: ${TABLE}.AssignLogin ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndTime ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.Event ;;
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

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
  }

  dimension: reason_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ReasonID ;;
  }

  dimension: task_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TaskID ;;
  }

  dimension: task_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TaskStatusID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      tasks.id,
      tasks.name,
      task_status.id,
      task_status.name,
      reasons.id,
      reasons.table_name,
      reasons.name
    ]
  }
}
