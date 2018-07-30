view: price_approval_matrix {
  sql_table_name: dbo.PriceApprovalMatrix ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: bandwidth_max {
    type: number
    sql: ${TABLE}.BandwidthMax ;;
  }

  dimension: bandwidth_min {
    type: number
    sql: ${TABLE}.BandwidthMin ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
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

  dimension: on_net {
    type: string
    sql: ${TABLE}.OnNet ;;
  }

  dimension: porc_max {
    type: number
    sql: ${TABLE}.PorcMax ;;
  }

  dimension: porc_min {
    type: number
    sql: ${TABLE}.PorcMin ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.Role ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      customers.id,
      customers.name,
      customers.group_name,
      products.id,
      products.name
    ]
  }
}
