view: service_component_types {
  sql_table_name: dbo.ServiceComponentTypes ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: netsuite_item_mrr {
    type: string
    sql: ${TABLE}.NetsuiteItemMRR ;;
  }

  dimension: netsuite_item_nrr {
    type: string
    sql: ${TABLE}.NetsuiteItemNRR ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.Pos ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
