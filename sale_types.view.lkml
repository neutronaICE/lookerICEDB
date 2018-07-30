view: sale_types {
  sql_table_name: dbo.SaleTypes ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
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
