view: kpivalues {
  sql_table_name: dbo.KPIValues ;;

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

  dimension: group1 {
    type: string
    sql: ${TABLE}.Group1 ;;
  }

  dimension: group2 {
    type: string
    sql: ${TABLE}.Group2 ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: kpiid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.KPIID ;;
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

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, kpis.id, kpis.name]
  }
}
