view: manual_credit_memos {
  sql_table_name: dbo.ManualCreditMemos ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: credit_account_id {
    type: number
    sql: ${TABLE}.CreditAccountID ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: debit_account_id {
    type: number
    sql: ${TABLE}.DebitAccountID ;;
  }

  dimension_group: deferred_first {
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
    sql: ${TABLE}.DeferredFirstDate ;;
  }

  dimension: deferred_months {
    type: number
    sql: ${TABLE}.DeferredMonths ;;
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

  dimension: is_nrc {
    type: string
    sql: ${TABLE}.IsNRC ;;
  }

  dimension: net_amount {
    type: string
    sql: ${TABLE}.NetAmount ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.ParentID ;;
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

  dimension: tax_factor {
    type: number
    sql: ${TABLE}.TaxFactor ;;
  }

  dimension: taxes {
    type: string
    sql: ${TABLE}.Taxes ;;
  }

  measure: count {
    type: count
    drill_fields: [id, services.id, invoices.id, invoices.customer_name]
  }
}
