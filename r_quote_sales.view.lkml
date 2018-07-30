view: r_quote_sales {
  sql_table_name: dbo.r_QuoteSales ;;

  dimension: bandwidth_sale {
    type: number
    sql: ${TABLE}.BandwidthSale ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: commercial_manager_name {
    type: string
    sql: ${TABLE}.CommercialManagerName ;;
  }

  dimension: contract_month_sale {
    type: number
    sql: ${TABLE}.ContractMonthSale ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  dimension: familly_sale {
    type: string
    sql: ${TABLE}.FamillySale ;;
  }

  dimension_group: finalized {
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
    sql: ${TABLE}.FinalizedDate ;;
  }

  dimension_group: first_send {
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
    sql: ${TABLE}.FirstSendDate ;;
  }

  dimension: is_hot {
    type: string
    sql: ${TABLE}.IsHot ;;
  }

  dimension: is_solt {
    type: string
    sql: ${TABLE}.IsSolt ;;
  }

  dimension_group: last_send {
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
    sql: ${TABLE}.LastSendDate ;;
  }

  dimension: mrcsale {
    type: string
    sql: ${TABLE}.MRCSale ;;
  }

  dimension: nrcsale {
    type: string
    sql: ${TABLE}.NRCSale ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: period_month {
    type: string
    sql: ${TABLE}.PeriodMonth ;;
  }

  dimension: period_trim {
    type: string
    sql: ${TABLE}.PeriodTrim ;;
  }

  dimension: period_year {
    type: string
    sql: ${TABLE}.PeriodYear ;;
  }

  dimension: price_manager_name {
    type: string
    sql: ${TABLE}.PriceManagerName ;;
  }

  dimension: product_sale {
    type: string
    sql: ${TABLE}.ProductSale ;;
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

  dimension: revenue_sale {
    type: string
    sql: ${TABLE}.RevenueSale ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension_group: state_change {
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
    sql: ${TABLE}.StateChangeDate ;;
  }

  dimension: state_change_period {
    type: string
    sql: ${TABLE}.StateChangePeriod ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.StateName ;;
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
      commercial_manager_name,
      price_manager_name,
      customer_name,
      state_name,
      quotes.id,
      quotes.name,
      quote_points.id,
      quote_points.name,
      customers.id,
      customers.name,
      customers.group_name
    ]
  }
}
