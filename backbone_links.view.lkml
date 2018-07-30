view: backbone_links {
  sql_table_name: dbo.BackboneLinks ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: access_router_from_id {
    type: number
    sql: ${TABLE}.AccessRouterFromID ;;
  }

  dimension: access_router_to_id {
    type: number
    sql: ${TABLE}.AccessRouterToID ;;
  }

  dimension_group: activation {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ActivationDate ;;
  }

  dimension: admin_group {
    type: string
    sql: ${TABLE}.AdminGroup ;;
  }

  dimension: backbone_links_media_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BackboneLinksMediaTypeID ;;
  }

  dimension: backbone_links_physical_encapsulation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BackboneLinksPhysicalEncapsulationID ;;
  }

  dimension: bandwidth {
    type: string
    sql: ${TABLE}.Bandwidth ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CarrierID ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.Color ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: contract {
    type: string
    sql: ${TABLE}.Contract ;;
  }

  dimension: contract_term {
    type: number
    sql: ${TABLE}.ContractTerm ;;
  }

  dimension: contract_term2 {
    type: number
    sql: ${TABLE}.ContractTerm2 ;;
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

  dimension: is_customer_dedicated {
    type: string
    sql: ${TABLE}.IsCustomerDedicated ;;
  }

  dimension: is_primary {
    type: string
    sql: ${TABLE}.IsPrimary ;;
  }

  dimension: is_protected {
    type: string
    sql: ${TABLE}.IsProtected ;;
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

  dimension: mrc {
    type: string
    sql: ${TABLE}.MRC ;;
  }

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.Path ;;
  }

  dimension: popa {
    type: number
    sql: ${TABLE}.POPA ;;
  }

  dimension: popz {
    type: number
    sql: ${TABLE}.POPZ ;;
  }

  dimension: provider_cid {
    type: string
    sql: ${TABLE}.ProviderCID ;;
  }

  dimension: provider_woid {
    type: string
    sql: ${TABLE}.ProviderWOID ;;
  }

  dimension: rtt {
    type: number
    sql: ${TABLE}.RTT ;;
  }

  dimension: sensor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SensorID ;;
  }

  dimension: service_component_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceComponentID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: submarine_cable {
    type: string
    sql: ${TABLE}.SubmarineCable ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      carriers.id,
      carriers.name,
      service_components.id,
      sensors.id,
      sensors.group_name,
      sensors.device_name,
      sensors.name,
      backbone_links_media_type.id,
      backbone_links_media_type.name,
      backbone_links_physical_encapsulation.id,
      backbone_links_physical_encapsulation.name
    ]
  }
}
