view: local_loop_pricing_rule_results {
  sql_table_name: dbo.LocalLoopPricingRuleResults ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: distance {
    type: number
    sql: ${TABLE}.Distance ;;
  }

  dimension: mrc {
    type: string
    sql: ${TABLE}.MRC ;;
  }

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
  }

  dimension: price_code {
    type: string
    sql: ${TABLE}.PriceCode ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      quote_points.id,
      quote_points.name,
      carriers.id,
      carriers.name,
      quote_items.id
    ]
  }
}
