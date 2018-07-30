view: apinitel_quote_requests {
  sql_table_name: dbo.APINitelQuoteRequests ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: calls_remaining {
    type: number
    sql: ${TABLE}.callsRemaining ;;
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

  dimension: modify_login {
    type: string
    sql: ${TABLE}.ModifyLogin ;;
  }

  dimension_group: modify {
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
    sql: ${TABLE}.ModifyTime ;;
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

  dimension: requested_data {
    type: string
    sql: ${TABLE}.RequestedData ;;
  }

  dimension: response_data {
    type: string
    sql: ${TABLE}.ResponseData ;;
  }

  dimension: rfq_tracking_number {
    type: string
    sql: ${TABLE}.rfqTrackingNumber ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: total_mrc {
    type: number
    sql: ${TABLE}.TotalMRC ;;
  }

  dimension: total_nrc {
    type: number
    sql: ${TABLE}.TotalNRC ;;
  }

  measure: count {
    type: count
    drill_fields: [id, quotes.id, quotes.name, quote_items.id]
  }
}
