view: carriers {
  sql_table_name: dbo.Carriers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
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

  dimension: lead_time {
    type: number
    sql: ${TABLE}.LeadTime ;;
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

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderID ;;
  }

  dimension: providers {
    type: string
    sql: ${TABLE}.Providers ;;
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
      providers.id,
      providers.name,
      providers.legal_name,
      access_prices.count,
      backbone_links.count,
      carrier_contact_logs.count,
      carrier_contacts.count,
      carrier_default_texts.count,
      carrier_logs.count,
      carrier_red_flags.count,
      carrier_requests.count,
      contact_logs.count,
      contacts.count,
      local_loop_price_lists.count,
      local_loop_pricing_rule_results.count,
      local_loop_quotes.count,
      nnis_customers.count,
      nnis_providers.count,
      pricing_tests.count,
      quote_items.count,
      quote_item_versions.count,
      quote_sales_backup.count,
      r_service_components.count,
      sale_order_component_logs.count,
      sale_order_components.count,
      service_component_logs.count,
      service_components.count,
      service_orders.count,
      services.count,
      service_survey_responses.count,
      tmp_bkp_services.count
    ]
  }
}
