view: _quote_devices {
  sql_table_name: dbo._QuoteDevices ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: device_code {
    type: string
    sql: ${TABLE}.DeviceCode ;;
  }

  dimension: mrt {
    type: string
    sql: ${TABLE}.MRT ;;
  }

  dimension: nrcost {
    type: string
    sql: ${TABLE}.NRCost ;;
  }

  dimension: nrt {
    type: string
    sql: ${TABLE}.NRT ;;
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

  dimension: return_amount {
    type: string
    sql: ${TABLE}.ReturnAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [id, quotes.id, quotes.name, quote_items.id]
  }
}
