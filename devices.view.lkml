view: devices {
  sql_table_name: dbo.Devices ;;

  dimension: bandwidth_max {
    type: number
    sql: ${TABLE}.BandwidthMax ;;
  }

  dimension: bandwidth_min {
    type: number
    sql: ${TABLE}.BandwidthMin ;;
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

  dimension: mrt {
    type: string
    sql: ${TABLE}.MRT ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nrcost {
    type: string
    sql: ${TABLE}.NRCost ;;
  }

  dimension: nrt {
    type: string
    sql: ${TABLE}.NRT ;;
  }

  dimension: product_type_id {
    type: string
    sql: ${TABLE}.ProductTypeID ;;
  }

  dimension: services {
    type: string
    sql: ${TABLE}.Services ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.Vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
