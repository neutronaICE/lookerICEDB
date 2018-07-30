view: commercial_commisions {
  sql_table_name: dbo.CommercialCommisions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: commercial_login {
    type: string
    sql: ${TABLE}.CommercialLogin ;;
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

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
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

  dimension: quota {
    type: string
    sql: ${TABLE}.Quota ;;
  }

  dimension: r12 {
    type: number
    sql: ${TABLE}.R12 ;;
  }

  dimension: r24 {
    type: number
    sql: ${TABLE}.R24 ;;
  }

  dimension: r36 {
    type: number
    sql: ${TABLE}.R36 ;;
  }

  dimension: r48 {
    type: number
    sql: ${TABLE}.R48 ;;
  }

  dimension: rnrc {
    type: number
    sql: ${TABLE}.RNRC ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [id, group_name]
  }
}
