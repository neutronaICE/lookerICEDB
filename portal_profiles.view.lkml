view: portal_profiles {
  sql_table_name: dbo.PortalProfiles ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: automatic_prices {
    type: string
    sql: ${TABLE}.AutomaticPrices ;;
  }

  dimension: bandwidths {
    type: string
    sql: ${TABLE}.Bandwidths ;;
  }

  dimension: contract_terms {
    type: string
    sql: ${TABLE}.ContractTerms ;;
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

  dimension: features {
    type: string
    sql: ${TABLE}.Features ;;
  }

  dimension: is_deleted {
    type: string
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.Products ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, customers.count]
  }
}
