view: currency_exchange_rates {
  sql_table_name: dbo.CurrencyExchangeRates ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: calculation_method {
    type: string
    sql: ${TABLE}.CalculationMethod ;;
  }

  dimension: creation_login {
    type: string
    sql: ${TABLE}.CreationLogin ;;
  }

  dimension: currency_from {
    type: string
    sql: ${TABLE}.CurrencyFrom ;;
  }

  dimension: currency_to {
    type: string
    sql: ${TABLE}.CurrencyTo ;;
  }

  dimension_group: expiration {
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
    sql: ${TABLE}.ExpirationDate ;;
  }

  dimension: rate {
    type: string
    sql: ${TABLE}.Rate ;;
  }

  dimension_group: rate {
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
    sql: ${TABLE}.RateDate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
