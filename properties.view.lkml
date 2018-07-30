view: properties {
  sql_table_name: dbo.Properties ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: data_type {
    type: string
    sql: ${TABLE}.DataType ;;
  }

  dimension: default_value {
    type: string
    sql: ${TABLE}.DefaultValue ;;
  }

  dimension: is_customer_visible {
    type: string
    sql: ${TABLE}.IsCustomerVisible ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: options {
    type: string
    sql: ${TABLE}.Options ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.Pos ;;
  }

  dimension: quote_state {
    type: string
    sql: ${TABLE}.QuoteState ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.Section ;;
  }

  dimension: write_roles {
    type: string
    sql: ${TABLE}.WriteRoles ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
