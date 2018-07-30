view: region_managers {
  sql_table_name: dbo.RegionManagers ;;

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
    type: number
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
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

  dimension: region_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RegionID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, regions.id, regions.name]
  }
}
