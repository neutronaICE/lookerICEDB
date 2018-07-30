view: contacts_new {
  sql_table_name: dbo.ContactsNew ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: cell_phone {
    type: string
    sql: ${TABLE}.CellPhone ;;
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

  dimension: contact_type_id {
    type: number
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

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_login_enabled {
    type: string
    sql: ${TABLE}.IsLoginEnabled ;;
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

  dimension: mail {
    type: string
    sql: ${TABLE}.Mail ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: password_hash {
    type: string
    sql: ${TABLE}.PasswordHash ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderID ;;
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
      contact_types.id,
      contact_types.name,
      contact_escalation_levels.id,
      contact_escalation_levels.name,
      customers.id,
      customers.name,
      customers.group_name,
      providers.id,
      providers.name,
      providers.legal_name
    ]
  }
}
