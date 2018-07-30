view: mails {
  sql_table_name: dbo.Mails ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}.Body ;;
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.CC ;;
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

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}."From" ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: soid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.SOID ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}."To" ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.UID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      quotes.id,
      quotes.name,
      sos.id,
      services.id,
      mail_attachments.count
    ]
  }
}
