view: latencies {
  sql_table_name: dbo.Latencies ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: latency_br {
    type: number
    sql: ${TABLE}.LatencyBR ;;
  }

  dimension: latency_us {
    type: number
    sql: ${TABLE}.LatencyUS ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
