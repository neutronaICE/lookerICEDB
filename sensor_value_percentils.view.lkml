view: sensor_value_percentils {
  sql_table_name: dbo.SensorValuePercentils ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
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

  measure: count {
    type: count
    drill_fields: [id, sensors.id, sensors.group_name, sensors.device_name, sensors.name]
  }
}
