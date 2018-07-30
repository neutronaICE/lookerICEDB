view: sostatus_sub_status {
  sql_table_name: dbo.SOStatus_SubStatus ;;

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: sub_status_id {
    type: number
    sql: ${TABLE}.SubStatusId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
