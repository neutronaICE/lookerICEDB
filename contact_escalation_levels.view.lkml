view: contact_escalation_levels {
  sql_table_name: dbo.ContactEscalationLevels ;;

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
    drill_fields: [id, name, contact_logs.count, contacts.count, contacts_new.count]
  }
}
