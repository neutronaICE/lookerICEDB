view: service_component_negotiation_items {
  sql_table_name: dbo.ServiceComponentNegotiationItems ;;

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

  dimension: is_complete {
    type: string
    sql: ${TABLE}.IsComplete ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
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
