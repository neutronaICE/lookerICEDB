view: apiquote_notifications {
  sql_table_name: dbo.APIQuoteNotifications ;;

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

  dimension: email_notification {
    type: string
    sql: ${TABLE}.EmailNotification ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
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

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: send_flag {
    type: string
    sql: ${TABLE}.SendFlag ;;
  }

  measure: count {
    type: count
    drill_fields: [id, quotes.id, quotes.name]
  }
}
