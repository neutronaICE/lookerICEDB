view: invoice_types {
  sql_table_name: dbo.InvoiceTypes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: next_number {
    type: number
    sql: ${TABLE}.NextNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, invoice_reasons.count, invoices.count]
  }
}
