view: purchase_order_sign_rules {
  sql_table_name: dbo.PurchaseOrderSignRules ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: amount_max {
    type: string
    sql: ${TABLE}.AmountMax ;;
  }

  dimension: amount_min {
    type: string
    sql: ${TABLE}.AmountMin ;;
  }

  dimension: cost_center_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CostCenterID ;;
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

  dimension: level {
    type: number
    sql: ${TABLE}.Level ;;
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

  dimension: request_login {
    type: string
    sql: ${TABLE}.RequestLogin ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [id, cost_centers.id, cost_centers.name]
  }
}
