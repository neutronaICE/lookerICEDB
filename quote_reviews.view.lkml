view: quote_reviews {
  sql_table_name: dbo.QuoteReviews ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: modify_login {
    type: string
    sql: ${TABLE}.ModifyLogin ;;
  }

  dimension: quote_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QuoteID ;;
  }

  dimension: review_reason_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ReviewReasonID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, quotes.id, quotes.name, review_reasons.id, review_reasons.name]
  }
}
