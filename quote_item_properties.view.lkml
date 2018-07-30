view: quote_item_properties {
  sql_table_name: dbo.QuoteItemProperties ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
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

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [quotes.id, quotes.name, quote_items.id]
  }
}
