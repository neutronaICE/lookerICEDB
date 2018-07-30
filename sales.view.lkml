view: sales {
  sql_table_name: dbo.Sales ;;

  dimension: sale_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SaleID ;;
  }

  dimension: bandwidth {
    type: string
    sql: ${TABLE}.Bandwidth ;;
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

  dimension: llp {
    type: string
    sql: ${TABLE}.LLP ;;
  }

  dimension: mrt {
    type: number
    sql: ${TABLE}.MRT ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nrt {
    type: number
    sql: ${TABLE}.NRT ;;
  }

  dimension: old_mrc {
    type: string
    sql: ${TABLE}.OldMRC ;;
  }

  dimension: old_nrc {
    type: string
    sql: ${TABLE}.OldNRC ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: quore_id {
    type: number
    sql: ${TABLE}.QuoreID ;;
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

  dimension_group: sale {
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
    sql: ${TABLE}.SaleDate ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SaleType ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      sale_id,
      name,
      quotes.id,
      quotes.name,
      quote_items.id,
      customers.id,
      customers.name,
      customers.group_name,
      services.id
    ]
  }
}
