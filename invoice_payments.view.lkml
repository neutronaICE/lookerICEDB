view: invoice_payments {
  sql_table_name: dbo.InvoicePayments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: invoice_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InvoiceID ;;
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.PaymentID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, invoices.id, invoices.customer_name]
  }
}
