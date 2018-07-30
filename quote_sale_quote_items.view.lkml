view: quote_sale_quote_items {
  sql_table_name: dbo.QuoteSaleQuoteItems ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: quote_sale_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteSaleID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      quote_sales.id,
      quote_sales.name,
      quotes.id,
      quotes.name,
      quote_items.id
    ]
  }
}
