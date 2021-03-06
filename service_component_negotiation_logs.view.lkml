view: service_component_negotiation_logs {
  sql_table_name: dbo.ServiceComponentNegotiationLogs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: activation {
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
    sql: ${TABLE}.ActivationDate ;;
  }

  dimension: assign_to {
    type: string
    sql: ${TABLE}.AssignTo ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: modify_login {
    type: string
    sql: ${TABLE}.ModifyLogin ;;
  }

  dimension_group: modify {
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
    sql: ${TABLE}.ModifyTime ;;
  }

  dimension: mrc {
    type: string
    sql: ${TABLE}.MRC ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderID ;;
  }

  dimension_group: service_activation {
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
    sql: ${TABLE}.ServiceActivationDate ;;
  }

  dimension: service_component_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceComponentID ;;
  }

  dimension: service_component_negotiation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceComponentNegotiationID ;;
  }

  dimension_group: service_expire {
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
    sql: ${TABLE}.ServiceExpireDate ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: service_mrc {
    type: string
    sql: ${TABLE}.ServiceMRC ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      contact_name,
      service_component_negotiations.id,
      service_component_negotiations.contact_name,
      services.id,
      service_components.id,
      providers.id,
      providers.name,
      providers.legal_name
    ]
  }
}
