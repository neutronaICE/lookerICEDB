view: pricing_tests {
  sql_table_name: dbo.PricingTests ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: calculation {
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
    sql: ${TABLE}.CalculationTime ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
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

  dimension: mrr {
    type: string
    sql: ${TABLE}.MRR ;;
  }

  dimension: nrr {
    type: string
    sql: ${TABLE}.NRR ;;
  }

  dimension: price_code {
    type: string
    sql: ${TABLE}.PriceCode ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: quote_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteItemID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, quote_items.id, carriers.id, carriers.name]
  }
}
