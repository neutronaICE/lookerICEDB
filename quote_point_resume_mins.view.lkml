view: quote_point_resume_mins {
  sql_table_name: dbo.QuotePointResumeMins ;;

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

  dimension: carrier {
    type: string
    sql: ${TABLE}.Carrier ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: commercial {
    type: string
    sql: ${TABLE}.Commercial ;;
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

  dimension: device {
    type: string
    sql: ${TABLE}.Device ;;
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

  dimension: price_manager {
    type: string
    sql: ${TABLE}.PriceManager ;;
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
      customer_name,
      quotes.id,
      quotes.name,
      quote_points.id,
      quote_points.name,
      quote_items.id,
      customers.id,
      customers.name,
      customers.group_name
    ]
  }
}
