view: commision_settlements {
  sql_table_name: dbo.CommisionSettlements ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: activation {
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
    sql: ${TABLE}.ActivationDate ;;
  }

  dimension: bandwidth {
    type: number
    sql: ${TABLE}.Bandwidth ;;
  }

  dimension: com_m {
    type: number
    sql: ${TABLE}.ComM ;;
  }

  dimension: com_n {
    type: number
    sql: ${TABLE}.ComN ;;
  }

  dimension: commercial_login {
    type: string
    sql: ${TABLE}.CommercialLogin ;;
  }

  dimension: contract_month {
    type: number
    sql: ${TABLE}.ContractMonth ;;
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

  dimension: mrc {
    type: string
    sql: ${TABLE}.MRC ;;
  }

  dimension: mrcbb {
    type: string
    sql: ${TABLE}.MRCBB ;;
  }

  dimension: mrr {
    type: string
    sql: ${TABLE}.MRR ;;
  }

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
  }

  dimension: nrr {
    type: string
    sql: ${TABLE}.NRR ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.Rate ;;
  }

  dimension: rnrc {
    type: number
    sql: ${TABLE}.RNRC ;;
  }

  dimension: sale_order_id {
    type: number
    sql: ${TABLE}.SaleOrderID ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SaleType ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
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
      products.name,
      services.id
    ]
  }
}
