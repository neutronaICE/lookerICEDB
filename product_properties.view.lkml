view: product_properties {
  sql_table_name: dbo.ProductProperties ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.DataType ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}.Level ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: options {
    type: string
    sql: ${TABLE}.Options ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: roles {
    type: string
    sql: ${TABLE}.Roles ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.Section ;;
  }

  dimension_group: sort_order {
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
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, products.id, products.name]
  }
}
