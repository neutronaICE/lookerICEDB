view: customer_contact_sessions {
  sql_table_name: dbo.CustomerContactSessions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: customer_contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerContactID ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}.Hits ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.IP ;;
  }

  dimension_group: last_hit {
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
    sql: ${TABLE}.LastHitTime ;;
  }

  dimension_group: login {
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
    sql: ${TABLE}.LoginTime ;;
  }

  dimension_group: logout {
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
    sql: ${TABLE}.LogoutTime ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_contacts.id, customer_contacts.name]
  }
}
