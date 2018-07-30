view: quote_points {
  sql_table_name: dbo.QuotePoints ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: arr {
    type: string
    sql: ${TABLE}.ARR ;;
  }

  dimension: bandwidths {
    type: string
    sql: ${TABLE}.Bandwidths ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: contract_months {
    type: string
    sql: ${TABLE}.ContractMonths ;;
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

  dimension: geo_type {
    type: string
    sql: ${TABLE}.GeoType ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.Lng ;;
  }

  dimension: local_contact {
    type: string
    sql: ${TABLE}.LocalContact ;;
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

  dimension: mrr {
    type: string
    sql: ${TABLE}.MRR ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: npanxx {
    type: string
    sql: ${TABLE}.NPANXX ;;
  }

  dimension: nrr {
    type: string
    sql: ${TABLE}.NRR ;;
  }

  dimension: popid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.POPID ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.Pos ;;
  }

  dimension: price_accuracy {
    type: number
    sql: ${TABLE}.PriceAccuracy ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.Products ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: quote_item_max_id {
    type: number
    sql: ${TABLE}.QuoteItemMaxID ;;
  }

  dimension: quote_item_min_id {
    type: number
    sql: ${TABLE}.QuoteItemMinID ;;
  }

  dimension: quote_item_sale_id {
    type: number
    sql: ${TABLE}.QuoteItemSaleID ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
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
      quotes.id,
      quotes.name,
      services.id,
      pops.id,
      pops.name,
      _quote_point_maxs.count,
      _quote_point_mins.count,
      carrier_request_points.count,
      local_loop_pricing_rule_results.count,
      quote_items.count,
      quote_item_versions.count,
      quote_opportunities.count,
      quote_opportunity_apirequests.count,
      quote_opportunity_requests.count,
      quote_point_min_maxs.count,
      quote_point_resume_mins.count,
      quote_point_resumes.count,
      r_quotations.count,
      r_quote_sales.count,
      service_survey_responses.count,
      v_quote_opportunity_requests.count
    ]
  }
}
