view: user_notifications {
  sql_table_name: dbo.UserNotifications ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
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

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
