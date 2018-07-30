view: bill_items {
  sql_table_name: dbo.BillItems ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.AccountNumber ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension: bill_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BillID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension: nscost_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NSCostCenterID ;;
  }

  dimension: nsproject_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.NSProjectID ;;
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
      bills.id,
      services.id,
      nsprojects.id,
      nsprojects.name,
      nscost_centers.id,
      nscost_centers.name
    ]
  }
}
