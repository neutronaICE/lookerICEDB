view: apiclients {
  sql_table_name: dbo.APIClients ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: client_code {
    type: string
    sql: ${TABLE}.ClientCode ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: disclaimer {
    type: string
    sql: ${TABLE}.Disclaimer ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: last_login_ip {
    type: string
    sql: ${TABLE}.LastLoginIP ;;
  }

  dimension_group: last_login {
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
    sql: ${TABLE}.LastLoginTime ;;
  }

  dimension: max_quotes {
    type: number
    sql: ${TABLE}.MaxQuotes ;;
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

  dimension: secret {
    type: string
    sql: ${TABLE}.Secret ;;
  }

  dimension: technical_contact_email {
    type: string
    sql: ${TABLE}.TechnicalContactEmail ;;
  }

  dimension: technical_contact_name {
    type: string
    sql: ${TABLE}.TechnicalContactName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, technical_contact_name, customers.id, customers.name, customers.group_name]
  }
}
