view: customer_types {
  sql_table_name: dbo.CustomerTypes ;;

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

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: margin_mrr {
    type: string
    sql: ${TABLE}.MarginMRR ;;
  }

  dimension: margin_nrr {
    type: string
    sql: ${TABLE}.MarginNRR ;;
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

  dimension: pos {
    type: number
    sql: ${TABLE}.Pos ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, customers.count]
  }
}
