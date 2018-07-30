view: kpis {
  sql_table_name: dbo.KPIs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: background_color {
    type: string
    sql: ${TABLE}.BackgroundColor ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
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

  dimension: format {
    type: string
    sql: ${TABLE}.Format ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: kpi1_id {
    type: number
    sql: ${TABLE}.KPI1ID ;;
  }

  dimension: kpi2_id {
    type: number
    sql: ${TABLE}.KPI2ID ;;
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

  dimension: owner_login {
    type: string
    sql: ${TABLE}.OwnerLogin ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.Query ;;
  }

  dimension: sign {
    type: number
    sql: ${TABLE}.Sign ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: visible {
    type: string
    sql: ${TABLE}.Visible ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, kpivalues.count]
  }
}
