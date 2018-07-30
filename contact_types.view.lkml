view: contact_types {
  sql_table_name: dbo.ContactTypes ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, contact_logs.count, contacts.count, contacts_new.count]
  }
}
