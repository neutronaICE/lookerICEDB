view: _quote_point_maxs {
  sql_table_name: dbo._QuotePointMaxs ;;

  dimension: accepted {
    type: string
    sql: ${TABLE}.Accepted ;;
  }

  dimension: bandwidth {
    type: number
    sql: ${TABLE}.Bandwidth ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.Carrier ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: commercial_manager_name {
    type: string
    sql: ${TABLE}.CommercialManagerName ;;
  }

  dimension: contract_month {
    type: number
    sql: ${TABLE}.ContractMonth ;;
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

  dimension: device_code {
    type: string
    sql: ${TABLE}.DeviceCode ;;
  }

  dimension: has_device {
    type: number
    sql: ${TABLE}.HasDevice ;;
  }

  dimension: is_hot {
    type: string
    sql: ${TABLE}.IsHot ;;
  }

  dimension: is_rfp {
    type: string
    sql: ${TABLE}.IsRFP ;;
  }

  dimension: mrc {
    type: string
    sql: ${TABLE}.MRC ;;
  }

  dimension: nni {
    type: string
    sql: ${TABLE}.NNI ;;
  }

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: price_manager_name {
    type: string
    sql: ${TABLE}.PriceManagerName ;;
  }

  dimension: price_risk {
    type: number
    sql: ${TABLE}.PriceRisk ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: quote_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteItemID ;;
  }

  dimension: quote_point_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuotePointID ;;
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
      quote_items.id,
      quote_points.id,
      quote_points.name,
      customers.id,
      customers.name,
      customers.group_name
    ]
  }
}
