view: quote_accept_rules {
  sql_table_name: dbo.QuoteAcceptRules ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: bandwidth_max {
    type: number
    sql: ${TABLE}.BandwidthMax ;;
  }

  dimension: bandwidth_min {
    type: number
    sql: ${TABLE}.BandwidthMin ;;
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

  dimension: finantial_margin_max {
    type: string
    sql: ${TABLE}.FinantialMarginMax ;;
  }

  dimension: finantial_margin_min {
    type: string
    sql: ${TABLE}.FinantialMarginMin ;;
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

  dimension: mrcmax {
    type: string
    sql: ${TABLE}.MRCMax ;;
  }

  dimension: mrcmin {
    type: string
    sql: ${TABLE}.MRCMin ;;
  }

  dimension: nrcmax {
    type: string
    sql: ${TABLE}.NRCMax ;;
  }

  dimension: nrcmin {
    type: string
    sql: ${TABLE}.NRCMin ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.Products ;;
  }

  dimension: profit_margin_max {
    type: string
    sql: ${TABLE}.ProfitMarginMax ;;
  }

  dimension: profit_margin_min {
    type: string
    sql: ${TABLE}.ProfitMarginMin ;;
  }

  dimension: roimax {
    type: string
    sql: ${TABLE}.ROIMax ;;
  }

  dimension: roimin {
    type: string
    sql: ${TABLE}.ROIMin ;;
  }

  dimension: roles {
    type: string
    sql: ${TABLE}.Roles ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
