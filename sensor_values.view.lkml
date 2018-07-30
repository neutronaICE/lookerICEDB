view: sensor_values {
  sql_table_name: dbo.SensorValues ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: sensor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SensorID ;;
  }

  dimension: speed_in {
    type: string
    sql: ${TABLE}.SpeedIN ;;
  }

  dimension: speed_out {
    type: string
    sql: ${TABLE}.SpeedOUT ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}.Time ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sensors.id, sensors.group_name, sensors.device_name, sensors.name]
  }
}
