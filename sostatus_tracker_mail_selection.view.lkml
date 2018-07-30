view: sostatus_tracker_mail_selection {
  sql_table_name: dbo.SOStatusTrackerMailSelection ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: contacts {
    type: string
    sql: ${TABLE}.Contacts ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name, customers.group_name]
  }
}
