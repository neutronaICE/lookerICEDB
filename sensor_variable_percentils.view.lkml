view: sensor_variable_percentils {
  sql_table_name: dbo.SensorVariablePercentils ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: sensor_variable_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SensorVariableID ;;
  }

  dimension: value95_per_in {
    type: string
    sql: ${TABLE}.Value95PerIN ;;
  }

  dimension: value95_per_out {
    type: string
    sql: ${TABLE}.Value95PerOUT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sensor_variables.id, sensor_variables.name]
  }
}
