view: itresource_logs {
  sql_table_name: dbo.ITResourceLogs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
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

  dimension: event {
    type: string
    sql: ${TABLE}.Event ;;
  }

  dimension: features {
    type: string
    sql: ${TABLE}.Features ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.Model ;;
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

  dimension: resource_id {
    type: number
    sql: ${TABLE}.ResourceID ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.SerialNumber ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: user_login {
    type: string
    sql: ${TABLE}.UserLogin ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
