view: local_loop_pricing_rule_price_codes {
  sql_table_name: dbo.LocalLoopPricingRulePriceCodes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: local_loop_pricing_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LocalLoopPricingRuleID ;;
  }

  dimension: price_code {
    type: string
    sql: ${TABLE}.PriceCode ;;
  }

  measure: count {
    type: count
    drill_fields: [id, local_loop_pricing_rules.id]
  }
}
