view: months {
  sql_table_name: dbo.Months ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: annual {
    type: string
    sql: ${TABLE}.Annual ;;
  }

  dimension: monthly {
    type: string
    sql: ${TABLE}.Monthly ;;
  }

  dimension: quarterly {
    type: string
    sql: ${TABLE}.Quarterly ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
