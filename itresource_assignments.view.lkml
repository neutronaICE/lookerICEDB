view: itresource_assignments {
  sql_table_name: dbo.ITResourceAssignments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: assignment {
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
    sql: ${TABLE}.AssignmentDate ;;
  }

  dimension: assignment_details {
    type: string
    sql: ${TABLE}.AssignmentDetails ;;
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

  dimension_group: deallocation {
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
    sql: ${TABLE}.DeallocationDate ;;
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

  dimension: reason {
    type: string
    sql: ${TABLE}.Reason ;;
  }

  dimension: resource_id {
    type: number
    sql: ${TABLE}.ResourceID ;;
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
