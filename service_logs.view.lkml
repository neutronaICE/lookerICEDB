view: service_logs {
  sql_table_name: dbo.ServiceLogs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: bandwidth {
    type: number
    sql: ${TABLE}.Bandwidth ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
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

  dimension: end_customer {
    type: string
    sql: ${TABLE}.EndCustomer ;;
  }

  dimension: is_offnet {
    type: string
    sql: ${TABLE}.IsOffnet ;;
  }

  dimension: is_vip {
    type: string
    sql: ${TABLE}.IsVIP ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.Lng ;;
  }

  dimension: nni {
    type: string
    sql: ${TABLE}.NNI ;;
  }

  dimension: nni2 {
    type: string
    sql: ${TABLE}.NNI2 ;;
  }

  dimension: popid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.POPID ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, services.id, pops.id, pops.name]
  }
}
