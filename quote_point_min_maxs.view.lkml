view: quote_point_min_maxs {
  sql_table_name: dbo.QuotePointMinMaxs ;;

  dimension: bandwidth_max {
    type: string
    sql: ${TABLE}.BandwidthMax ;;
  }

  dimension: bandwidth_min {
    type: string
    sql: ${TABLE}.BandwidthMin ;;
  }

  dimension: bandwidth_sale {
    type: number
    sql: ${TABLE}.BandwidthSale ;;
  }

  dimension: bwgroup_max {
    type: string
    sql: ${TABLE}.BWGroupMax ;;
  }

  dimension: bwgroup_min {
    type: string
    sql: ${TABLE}.BWGroupMin ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: commercial_manager_name {
    type: string
    sql: ${TABLE}.CommercialManagerName ;;
  }

  dimension: contract_month_max {
    type: string
    sql: ${TABLE}.ContractMonthMax ;;
  }

  dimension: contract_month_min {
    type: string
    sql: ${TABLE}.ContractMonthMin ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.DueDate ;;
  }

  dimension: end_customer {
    type: string
    sql: ${TABLE}.EndCustomer ;;
  }

  dimension: familly_max {
    type: string
    sql: ${TABLE}.FamillyMax ;;
  }

  dimension: familly_min {
    type: string
    sql: ${TABLE}.FamillyMin ;;
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

  dimension: mrcmax {
    type: string
    sql: ${TABLE}.MRCMax ;;
  }

  dimension: mrcmin {
    type: string
    sql: ${TABLE}.MRCMin ;;
  }

  dimension: mrcsale {
    type: string
    sql: ${TABLE}.MRCSale ;;
  }

  dimension: nrcmax {
    type: string
    sql: ${TABLE}.NRCMax ;;
  }

  dimension: nrcmin {
    type: string
    sql: ${TABLE}.NRCMin ;;
  }

  dimension: nrcsale {
    type: string
    sql: ${TABLE}.NRCSale ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: period_sale {
    type: string
    sql: ${TABLE}.PeriodSale ;;
  }

  dimension: period_trim {
    type: string
    sql: ${TABLE}.PeriodTrim ;;
  }

  dimension: period_trim_sale {
    type: string
    sql: ${TABLE}.PeriodTrimSale ;;
  }

  dimension: price_manager_name {
    type: string
    sql: ${TABLE}.PriceManagerName ;;
  }

  dimension: product_max {
    type: string
    sql: ${TABLE}.ProductMax ;;
  }

  dimension: product_min {
    type: string
    sql: ${TABLE}.ProductMin ;;
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

  dimension: request_firm {
    type: string
    sql: ${TABLE}.RequestFirm ;;
  }

  dimension: revenue_max {
    type: string
    sql: ${TABLE}.RevenueMax ;;
  }

  dimension: revenue_min {
    type: string
    sql: ${TABLE}.RevenueMin ;;
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

  dimension: state_working_days {
    type: number
    sql: ${TABLE}.StateWorkingDays ;;
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
