view: apirequest_logs {
  sql_table_name: dbo.APIRequestLogs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: client_ip {
    type: string
    sql: ${TABLE}.ClientIP ;;
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

  dimension: requested_data {
    type: string
    sql: ${TABLE}.RequestedData ;;
  }

  dimension: response_data {
    type: string
    sql: ${TABLE}.ResponseData ;;
  }

  dimension: urlbase {
    type: string
    sql: ${TABLE}.URLBase ;;
  }

  dimension: urlparameters {
    type: string
    sql: ${TABLE}.URLParameters ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
