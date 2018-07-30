view: providers {
  sql_table_name: dbo.Providers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: billing_entity_id {
    type: number
    sql: ${TABLE}.BillingEntityID ;;
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

  dimension: legal_name {
    type: string
    sql: ${TABLE}.LegalName ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      legal_name,
      agreements.count,
      bills.count,
      carrier_logs.count,
      carriers.count,
      contacts_new.count,
      nnis_providers.count,
      nodes.count,
      provider_logs.count,
      purchase_orders.count,
      r_service_components.count,
      service_component_logs.count,
      service_component_negotiation_items.count,
      service_component_negotiation_logs.count,
      service_component_negotiations.count,
      service_components.count
    ]
  }
}
