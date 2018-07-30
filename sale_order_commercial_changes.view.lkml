view: sale_order_commercial_changes {
  sql_table_name: dbo.SaleOrderCommercialChanges ;;

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

  dimension: new_end_customer {
    type: string
    sql: ${TABLE}.NewEndCustomer ;;
  }

  dimension: new_local_contact {
    type: string
    sql: ${TABLE}.NewLocalContact ;;
  }

  dimension: new_mtu {
    type: number
    sql: ${TABLE}.NewMTU ;;
  }

  dimension: new_nni {
    type: string
    sql: ${TABLE}.NewNNI ;;
  }

  dimension: new_notes {
    type: string
    sql: ${TABLE}.NewNotes ;;
  }

  dimension: new_product_id {
    type: string
    sql: ${TABLE}.NewProductID ;;
  }

  dimension: new_qn_q {
    type: string
    sql: ${TABLE}.NewQnQ ;;
  }

  dimension: new_subsidiary_id {
    type: number
    sql: ${TABLE}.NewSubsidiaryID ;;
  }

  dimension: old_end_customer {
    type: string
    sql: ${TABLE}.OldEndCustomer ;;
  }

  dimension: old_local_contact {
    type: string
    sql: ${TABLE}.OldLocalContact ;;
  }

  dimension: old_mtu {
    type: number
    sql: ${TABLE}.OldMTU ;;
  }

  dimension: old_nni {
    type: string
    sql: ${TABLE}.OldNNI ;;
  }

  dimension: old_notes {
    type: string
    sql: ${TABLE}.OldNotes ;;
  }

  dimension: old_product_id {
    type: string
    sql: ${TABLE}.OldProductID ;;
  }

  dimension: old_qn_q {
    type: string
    sql: ${TABLE}.OldQnQ ;;
  }

  dimension: old_subsidiary_id {
    type: number
    sql: ${TABLE}.OldSubsidiaryID ;;
  }

  dimension: sale_order_id {
    type: number
    sql: ${TABLE}.SaleOrderID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
