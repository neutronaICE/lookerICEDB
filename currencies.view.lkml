view: currencies {
  sql_table_name: dbo.Currencies ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
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
