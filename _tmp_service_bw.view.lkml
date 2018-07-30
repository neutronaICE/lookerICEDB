view: _tmp_service_bw {
  sql_table_name: dbo._tmp_service_bw ;;

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [services.id]
  }
}
