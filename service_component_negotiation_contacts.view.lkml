view: service_component_negotiation_contacts {
  sql_table_name: dbo.ServiceComponentNegotiationContacts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}.Body ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}.ContactEmail ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}.ContactName ;;
  }

  dimension: contact_phone {
    type: string
    sql: ${TABLE}.ContactPhone ;;
  }

  dimension: creation_login {
    type: string
    sql: ${TABLE}.CreationLogin ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreationTime ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension_group: next_action {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NextActionDate ;;
  }

  dimension: service_component_negotiation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceComponentNegotiationID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, contact_name, service_component_negotiations.id, service_component_negotiations.contact_name, service_component_negotiation_contact_logs.count]
  }
}
