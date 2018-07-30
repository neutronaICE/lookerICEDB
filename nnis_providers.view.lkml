view: nnis_providers {
  sql_table_name: dbo.NNIsProviders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: access_router_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AccessRouterID ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
  }

  dimension: cidconnect {
    type: string
    sql: ${TABLE}.CIDConnect ;;
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

  dimension: interface {
    type: string
    sql: ${TABLE}.Interface ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: media_type_id {
    type: number
    sql: ${TABLE}.MediaTypeID ;;
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

  dimension: mtu {
    type: string
    sql: ${TABLE}.MTU ;;
  }

  dimension: nnitype {
    type: string
    sql: ${TABLE}.NNIType ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: patch_panel {
    type: string
    sql: ${TABLE}.PatchPanel ;;
  }

  dimension: popid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.POPID ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderID ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      providers.id,
      providers.name,
      providers.legal_name,
      pops.id,
      pops.name,
      access_routers.id,
      access_routers.name,
      carriers.id,
      carriers.name,
      services.id
    ]
  }
}
