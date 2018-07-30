view: quote_states {
  sql_table_name: dbo.QuoteStates ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: cancellation_name {
    type: string
    sql: ${TABLE}.CancellationName ;;
  }

  dimension: is_quote {
    type: string
    sql: ${TABLE}.IsQuote ;;
  }

  dimension: is_sale {
    type: string
    sql: ${TABLE}.IsSale ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: partners_view_state {
    type: string
    sql: ${TABLE}.PartnersViewState ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.Role ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, cancellation_name]
  }
}
