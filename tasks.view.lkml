view: tasks {
  sql_table_name: dbo.Tasks ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: assign_login {
    type: string
    sql: ${TABLE}.AssignLogin ;;
  }

  dimension_group: assign {
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
    sql: ${TABLE}.AssignTime ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: hold_seconds {
    type: number
    sql: ${TABLE}.HoldSeconds ;;
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

  dimension: pending_seconds {
    type: number
    sql: ${TABLE}.PendingSeconds ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: request_by {
    type: string
    sql: ${TABLE}.RequestBy ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension_group: status_change {
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
    sql: ${TABLE}.StatusChangeTime ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusID ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.TypeID ;;
  }

  dimension: working_seconds {
    type: number
    sql: ${TABLE}.WorkingSeconds ;;
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
      customers.id,
      customers.name,
      customers.group_name,
      quotes.id,
      quotes.name,
      services.id,
      task_documents.count,
      task_events.count
    ]
  }
}
