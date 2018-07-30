view: sensors {
  sql_table_name: dbo.Sensors ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.DeviceName ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: last_value {
    type: string
    sql: ${TABLE}.LastValue ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.Message ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sign {
    type: string
    sql: ${TABLE}.Sign ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      group_name,
      device_name,
      name,
      access_routers.count,
      backbone_links.count,
      sensor_value_percentils.count,
      sensor_values.count,
      sensor_variables.count
    ]
  }
}
