view: contacts {
  sql_table_name: dbo.Contacts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.Class ;;
  }

  dimension: contact_class_id {
    type: number
    sql: ${TABLE}.ContactClassID ;;
  }

  dimension: contact_escalation_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ContactEscalationLevelID ;;
  }

  dimension: contact_type {
    type: string
    sql: ${TABLE}.ContactType ;;
  }

  dimension: contact_type_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ContactTypeID ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_login_enabled {
    type: string
    sql: ${TABLE}.IsLoginEnabled ;;
  }

  dimension: is_new {
    type: string
    sql: ${TABLE}.IsNew ;;
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

  dimension: password_hash {
    type: string
    sql: ${TABLE}.PasswordHash ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
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
      customers.id,
      customers.name,
      customers.group_name,
      services.id,
      carriers.id,
      carriers.name,
      contact_types.id,
      contact_types.name,
      contact_escalation_levels.id,
      contact_escalation_levels.name,
      contact_logs.count,
      contact_services.count,
      contact_sessions.count
    ]
  }
}
