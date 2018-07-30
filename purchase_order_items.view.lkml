view: purchase_order_items {
  sql_table_name: dbo.PurchaseOrderItems ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.AccountID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
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

  dimension: purchase_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PurchaseOrderID ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.Qty ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: total_amount {
    type: string
    sql: ${TABLE}.TotalAmount ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  dimension: vatrate {
    type: string
    sql: ${TABLE}.VATRate ;;
  }

  measure: count {
    type: count
    drill_fields: [id, purchase_orders.id, purchase_orders.project_name, accounts.id, accounts.name]
  }
}
