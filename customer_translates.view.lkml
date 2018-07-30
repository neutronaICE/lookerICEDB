view: customer_translates {
  sql_table_name: dbo.CustomerTranslates ;;

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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: customer_value {
    type: string
    sql: ${TABLE}.CustomerValue ;;
  }

  dimension: field {
    type: string
    sql: ${TABLE}.Field ;;
  }

  dimension: ice_value {
    type: string
    sql: ${TABLE}.IceValue ;;
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

  dimension: remarks {
    type: string
    sql: ${TABLE}.Remarks ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customers.id, customers.name, customers.group_name]
  }
}
