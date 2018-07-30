view: invoice_items {
  sql_table_name: dbo.InvoiceItems ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AccountID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: description2 {
    type: string
    sql: ${TABLE}.Description2 ;;
  }

  dimension: invoice_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InvoiceID ;;
  }

  dimension: is_billing {
    type: string
    sql: ${TABLE}.IsBilling ;;
  }

  dimension: is_item {
    type: string
    sql: ${TABLE}.IsItem ;;
  }

  dimension: is_nrc {
    type: string
    sql: ${TABLE}.IsNRC ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.Memo ;;
  }

  dimension: net_amount {
    type: string
    sql: ${TABLE}.NetAmount ;;
  }

  dimension: payment_type_id {
    type: number
    sql: ${TABLE}.PaymentTypeID ;;
  }

  dimension_group: posting {
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
    sql: ${TABLE}.PostingDate ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SubsidiaryID ;;
  }

  dimension: tax_amount {
    type: string
    sql: ${TABLE}.TaxAmount ;;
  }

  dimension: tax_id {
    type: number
    sql: ${TABLE}.TaxID ;;
  }

  dimension: total_amount {
    type: string
    sql: ${TABLE}.TotalAmount ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      invoices.id,
      invoices.customer_name,
      customers.id,
      customers.name,
      customers.group_name,
      products.id,
      products.name,
      services.id,
      accounts.id,
      accounts.name
    ]
  }
}
