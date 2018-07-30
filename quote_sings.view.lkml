view: quote_sings {
  sql_table_name: dbo.QuoteSings ;;

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension_group: sign {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SignDate ;;
  }

  dimension: sign_login {
    type: string
    sql: ${TABLE}.SignLogin ;;
  }

  dimension: sign_period {
    type: string
    sql: ${TABLE}.SignPeriod ;;
  }

  dimension: sign_user_name {
    type: string
    sql: ${TABLE}.SignUserName ;;
  }

  dimension: submit_revision {
    type: number
    sql: ${TABLE}.SubmitRevision ;;
  }

  measure: count {
    type: count
    drill_fields: [sign_user_name, quotes.id, quotes.name]
  }
}
