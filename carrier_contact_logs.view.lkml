view: carrier_contact_logs {
  sql_table_name: dbo.CarrierContactLogs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: carrier_contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierContactID ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.MobilePhone ;;
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

  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: work_phone {
    type: string
    sql: ${TABLE}.WorkPhone ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      carrier_contacts.id,
      carrier_contacts.name,
      carriers.id,
      carriers.name
    ]
  }
}
