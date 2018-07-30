view: contact_services {
  sql_table_name: dbo.ContactServices ;;

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ContactID ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  measure: count {
    type: count
    drill_fields: [contacts.id, contacts.name, services.id]
  }
}
