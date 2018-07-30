view: r_quotations {
  sql_table_name: dbo.r_Quotations ;;

  dimension: bandwidth_max {
    type: string
    sql: ${TABLE}.BandwidthMax ;;
  }

  dimension: bandwidth_min {
    type: string
    sql: ${TABLE}.BandwidthMin ;;
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

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
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

  dimension: familly_max {
    type: string
    sql: ${TABLE}.FamillyMax ;;
  }

  dimension: familly_min {
    type: string
    sql: ${TABLE}.FamillyMin ;;
  }

  dimension: is_hot {
    type: string
    sql: ${TABLE}.IsHot ;;
  }

  dimension: mrcmax {
    type: string
    sql: ${TABLE}.MRCMax ;;
  }

  dimension: mrcmin {
    type: string
    sql: ${TABLE}.MRCMin ;;
  }

  dimension: nrcmax {
    type: string
    sql: ${TABLE}.NRCMax ;;
  }

  dimension: nrcmin {
    type: string
    sql: ${TABLE}.NRCMin ;;
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

  dimension: product_max {
    type: string
    sql: ${TABLE}.ProductMax ;;
  }

  dimension: product_min {
    type: string
    sql: ${TABLE}.ProductMin ;;
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
