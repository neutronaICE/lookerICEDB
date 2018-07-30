view: quarters {
  sql_table_name: dbo.Quarters ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: month_first {
    type: number
    sql: ${TABLE}.MonthFirst ;;
  }

  dimension: month_last {
    type: number
    sql: ${TABLE}.MonthLast ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
