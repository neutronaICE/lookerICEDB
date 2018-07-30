view: quote_items {
  sql_table_name: dbo.QuoteItems ;;

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

  dimension: bom {
    type: string
    sql: ${TABLE}.BOM ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
  }

  dimension: client_quote_id {
    type: string
    sql: ${TABLE}.ClientQuoteID ;;
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

  dimension: currency_rate {
    type: string
    sql: ${TABLE}.CurrencyRate ;;
  }

  dimension: device_code {
    type: string
    sql: ${TABLE}.DeviceCode ;;
  }

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DiscountID ;;
  }

  dimension: finantial_margin {
    type: number
    sql: ${TABLE}.FinantialMargin ;;
  }

  dimension: is_backup {
    type: string
    sql: ${TABLE}.IsBackup ;;
  }

  dimension: is_internal {
    type: string
    sql: ${TABLE}.IsInternal ;;
  }

  dimension: is_uni {
    type: string
    sql: ${TABLE}.IsUNI ;;
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

  dimension: mrcdiscount {
    type: string
    sql: ${TABLE}.MRCDiscount ;;
  }

  dimension: mrcll {
    type: string
    sql: ${TABLE}.MRCLL ;;
  }

  dimension: mrcll2 {
    type: string
    sql: ${TABLE}.MRCLL2 ;;
  }

  dimension: mrcllorig {
    type: string
    sql: ${TABLE}.MRCLLOrig ;;
  }

  dimension: mrcost_bb {
    type: string
    sql: ${TABLE}.MRCostBB ;;
  }

  dimension: mrcost_bborig {
    type: string
    sql: ${TABLE}.MRCostBBOrig ;;
  }

  dimension: mrt {
    type: number
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

  dimension: nrcdiscount {
    type: string
    sql: ${TABLE}.NRCDiscount ;;
  }

  dimension: nrcll {
    type: string
    sql: ${TABLE}.NRCLL ;;
  }

  dimension: nrcll2 {
    type: string
    sql: ${TABLE}.NRCLL2 ;;
  }

  dimension: nrcllorig {
    type: string
    sql: ${TABLE}.NRCLLOrig ;;
  }

  dimension: nrcost_d {
    type: string
    sql: ${TABLE}.NRCostD ;;
  }

  dimension: nrt {
    type: number
    sql: ${TABLE}.NRT ;;
  }

  dimension: old_mrc {
    type: string
    sql: ${TABLE}.OldMRC ;;
  }

  dimension: old_mrr {
    type: string
    sql: ${TABLE}.OldMRR ;;
  }

  dimension: old_nrc {
    type: string
    sql: ${TABLE}.OldNRC ;;
  }

  dimension: old_nrr {
    type: string
    sql: ${TABLE}.OldNRR ;;
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

  dimension: product_catalog_id {
    type: number
    sql: ${TABLE}.ProductCatalogID ;;
  }

  dimension: product_catalog_option_id {
    type: number
    sql: ${TABLE}.ProductCatalogOptionID ;;
  }

  dimension: product_def_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductDefID ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: profit_margin {
    type: number
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
    type: number
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
      product_defs.id,
      product_defs.name,
      pops.id,
      pops.name,
      carriers.id,
      carriers.name,
      discounts.id,
      discounts.name,
      _quote_devices.count,
      _quote_point_maxs.count,
      _quote_point_mins.count,
      apinitel_quote_requests.count,
      komitems.count,
      local_loop_pricing_rule_results.count,
      pricing_tests.count,
      quote_item_properties.count,
      quote_point_resume_mins.count,
      quote_point_resumes.count,
      quote_sale_quote_items.count,
      quote_sales.count,
      quote_sales_backup.count,
      sales.count,
      service_orders.count,
      services.count,
      tmp_bkp_services.count
    ]
  }
}
