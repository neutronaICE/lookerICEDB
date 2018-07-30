view: customer_similarity_exceptions {
  sql_table_name: dbo.CustomerSimilarityExceptions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: name2 {
    type: string
    sql: ${TABLE}.Name2 ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
