view: purchase_order_signs {
  sql_table_name: dbo.PurchaseOrderSigns ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: purchase_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PurchaseOrderID ;;
  }

  dimension: sign_login {
    type: string
    sql: ${TABLE}.SignLogin ;;
  }

  dimension_group: sign {
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
    sql: ${TABLE}.SignTime ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [id, purchase_orders.id, purchase_orders.project_name]
  }
}
