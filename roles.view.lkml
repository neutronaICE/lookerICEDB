view: roles {
  sql_table_name: dbo.Roles ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.Parent ;;
  }

  dimension: permissions {
    type: string
    sql: ${TABLE}.Permissions ;;
  }

  dimension: roles {
    type: string
    sql: ${TABLE}.Roles ;;
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
