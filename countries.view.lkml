view: countries {
  sql_table_name: dbo.Countries ;;

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: region_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RegionID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [name, regions.id, regions.name]
  }
}
