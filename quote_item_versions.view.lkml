view: quote_item_versions {
  sql_table_name: dbo.QuoteItemVersions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: accepted {
    type: string
    sql: ${TABLE}.Accepted ;;
  }

  dimension: bandwidth {
    type: number
    sql: ${TABLE}.Bandwidth ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
  }

  dimension: contract_month {
    type: number
    sql: ${TABLE}.ContractMonth ;;
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

  dimension: device_code {
    type: string
    sql: ${TABLE}.DeviceCode ;;
  }

  dimension: finantial_margin {
    type: string
    sql: ${TABLE}.FinantialMargin ;;
  }

  dimension: is_backup {
    type: string
    sql: ${TABLE}.IsBackup ;;
  }

  dimension: lead_time {
    type: number
    sql: ${TABLE}.LeadTime ;;
  }

  dimension: llcontract_term {
    type: number
    sql: ${TABLE}.LLContractTerm ;;
  }

  dimension: lllead_time {
    type: number
    sql: ${TABLE}.LLLeadTime ;;
  }

  dimension: local_loop_redundancy {
    type: string
    sql: ${TABLE}.LocalLoopRedundancy ;;
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

  dimension: mrcbb {
    type: string
    sql: ${TABLE}.MRCBB ;;
  }

  dimension: mrcd {
    type: string
    sql: ${TABLE}.MRCD ;;
  }

  dimension: mrcll {
    type: string
    sql: ${TABLE}.MRCLL ;;
  }

  dimension: mrcll2 {
    type: string
    sql: ${TABLE}.MRCLL2 ;;
  }

  dimension: mrcost_bb {
    type: string
    sql: ${TABLE}.MRCostBB ;;
  }

  dimension: mrt {
    type: string
    sql: ${TABLE}.MRT ;;
  }

  dimension: nni {
    type: string
    sql: ${TABLE}.NNI ;;
  }

  dimension: nrcbb {
    type: string
    sql: ${TABLE}.NRCBB ;;
  }

  dimension: nrcd {
    type: string
    sql: ${TABLE}.NRCD ;;
  }

  dimension: nrcll {
    type: string
    sql: ${TABLE}.NRCLL ;;
  }

  dimension: nrcll2 {
    type: string
    sql: ${TABLE}.NRCLL2 ;;
  }

  dimension: nrcost_d {
    type: string
    sql: ${TABLE}.NRCostD ;;
  }

  dimension: nrt {
    type: string
    sql: ${TABLE}.NRT ;;
  }

  dimension: popid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.POPID ;;
  }

  dimension: position_id {
    type: number
    sql: ${TABLE}.PositionID ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: profit_margin {
    type: string
    sql: ${TABLE}.ProfitMargin ;;
  }

  dimension: properties {
    type: string
    sql: ${TABLE}.Properties ;;
  }

  dimension: quore_id {
    type: number
    sql: ${TABLE}.QuoreID ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: quote_point_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuotePointID ;;
  }

  dimension: remote_hands_d {
    type: string
    sql: ${TABLE}.RemoteHandsD ;;
  }

  dimension: roi {
    type: string
    sql: ${TABLE}.ROI ;;
  }

  dimension: shipping_d {
    type: string
    sql: ${TABLE}.ShippingD ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SubsidiaryID ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      quotes.id,
      quotes.name,
      quote_points.id,
      quote_points.name,
      products.id,
      products.name,
      pops.id,
      pops.name,
      carriers.id,
      carriers.name
    ]
  }
}
