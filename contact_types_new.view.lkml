view: contact_types_new {
  sql_table_name: dbo.ContactTypesNew ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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
