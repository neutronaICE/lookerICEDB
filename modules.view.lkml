view: modules {
  sql_table_name: dbo.Modules ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
