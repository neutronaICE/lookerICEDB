view: permissions {
  sql_table_name: dbo.Permissions ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: module {
    type: string
    sql: ${TABLE}.Module ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
