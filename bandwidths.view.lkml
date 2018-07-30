view: bandwidths {
  sql_table_name: dbo.Bandwidths ;;

  dimension: code {
    type: number
    sql: ${TABLE}.Code ;;
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

  dimension: default_quote {
    type: string
    sql: ${TABLE}.DefaultQuote ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
