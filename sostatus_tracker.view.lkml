view: sostatus_tracker {
  sql_table_name: dbo.SOStatusTracker ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: service_order_task_types_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderTaskTypesID ;;
  }

  dimension: soid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.SOID ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sos.id, service_order_task_types.id, service_order_task_types.name]
  }
}
