view: invoices {
  sql_table_name: dbo.Invoices ;;

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

  dimension: credit_amount {
    type: string
    sql: ${TABLE}.CreditAmount ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: customer_address {
    type: string
    sql: ${TABLE}.CustomerAddress ;;
  }

  dimension: customer_balance {
    type: string
    sql: ${TABLE}.CustomerBalance ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}.CustomerNumber ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.DueDate ;;
  }

  dimension: general_balance {
    type: string
    sql: ${TABLE}.GeneralBalance ;;
  }

  dimension: invoice_reason_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InvoiceReasonID ;;
  }

  dimension: invoice_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InvoiceTypeID ;;
  }

  dimension: invoices {
    type: string
    sql: ${TABLE}.Invoices ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension_group: issue {
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
    sql: ${TABLE}.IssueDate ;;
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

  dimension: number {
    type: string
    sql: ${TABLE}.Number ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.ParentID ;;
  }

  dimension: payments {
    type: string
    sql: ${TABLE}.Payments ;;
  }

  dimension: quore_id {
    type: number
    sql: ${TABLE}.QuoreID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SubsidiaryID ;;
  }

  dimension: total_amount {
    type: string
    sql: ${TABLE}.TotalAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      customer_name,
      customers.id,
      customers.name,
      customers.group_name,
      invoice_types.id,
      invoice_types.name,
      invoice_reasons.id,
      invoice_reasons.name,
      invoice_items.count,
      invoice_payments.count,
      manual_charges.count,
      manual_credit_memos.count,
      manual_invoices.count
    ]
  }
}
