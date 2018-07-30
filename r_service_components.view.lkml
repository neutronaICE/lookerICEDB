view: r_service_components {
  sql_table_name: dbo.r_ServiceComponents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: activate {
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
    sql: ${TABLE}.ActivateDate ;;
  }

  dimension: bandwidth {
    type: number
    sql: ${TABLE}.Bandwidth ;;
  }

  dimension: billing_entity_id {
    type: number
    sql: ${TABLE}.BillingEntityID ;;
  }

  dimension: billing_entity_name {
    type: string
    sql: ${TABLE}.BillingEntityName ;;
  }

  dimension_group: cancel {
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
    sql: ${TABLE}.CancelDate ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
  }

  dimension: carrier_name {
    type: string
    sql: ${TABLE}.CarrierName ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: contract_terms {
    type: number
    sql: ${TABLE}.ContractTerms ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.CountryName ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: currency_rate {
    type: string
    sql: ${TABLE}.CurrencyRate ;;
  }

  dimension_group: focdate {
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
    sql: ${TABLE}.FOCDate ;;
  }

  dimension_group: installation {
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
    sql: ${TABLE}.InstallationDate ;;
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

  dimension: mrcusd {
    type: string
    sql: ${TABLE}.MRCUSD ;;
  }

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
  }

  dimension: nrcusd {
    type: string
    sql: ${TABLE}.NRCUSD ;;
  }

  dimension_group: programmed_cancel {
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
    sql: ${TABLE}.ProgrammedCancelDate ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderID ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.ProviderName ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.Reference ;;
  }

  dimension: reference2 {
    type: string
    sql: ${TABLE}.Reference2 ;;
  }

  dimension: sale_order_id {
    type: number
    sql: ${TABLE}.SaleOrderID ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension_group: sign {
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
    sql: ${TABLE}.SignDate ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: support_type {
    type: string
    sql: ${TABLE}.SupportType ;;
  }

  dimension: tax_rate {
    type: string
    sql: ${TABLE}.TaxRate ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: type_name {
    type: string
    sql: ${TABLE}.TypeName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      type_name,
      country_name,
      carrier_name,
      provider_name,
      billing_entity_name,
      services.id,
      carriers.id,
      carriers.name,
      providers.id,
      providers.name,
      providers.legal_name
    ]
  }
}
