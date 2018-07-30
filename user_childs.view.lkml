view: user_childs {
  sql_table_name: dbo.UserChilds ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: child_login {
    type: string
    sql: ${TABLE}.ChildLogin ;;
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

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
