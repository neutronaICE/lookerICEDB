view: screens {
  sql_table_name: dbo.Screens ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: config {
    type: string
    sql: ${TABLE}.Config ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: screen {
    type: string
    sql: ${TABLE}.Screen ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
