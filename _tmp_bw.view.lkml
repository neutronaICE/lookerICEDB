view: _tmp_bw {
  sql_table_name: dbo._tmp_bw ;;

  dimension: entero {
    type: number
    sql: ${TABLE}.entero ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
