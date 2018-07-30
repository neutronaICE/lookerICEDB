view: product_types {
  sql_table_name: dbo.ProductTypes ;;

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
