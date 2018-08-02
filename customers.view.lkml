view: customers {
  sql_table_name: dbo.Customers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: commercial_login {
    type: string
    sql: ${TABLE}.CommercialLogin ;;
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

  dimension: crmtype {
    type: string
    sql: ${TABLE}.CRMType ;;
  }

  dimension: customer_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerTypeID ;;
  }

  dimension: default_subsidiary_id {
    type: number
    sql: ${TABLE}.DefaultSubsidiaryID ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.ExternalID ;;
  }

  dimension: force_price_manager {
    type: string
    sql: ${TABLE}.ForcePriceManager ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.ImageURL ;;
  }

  dimension: margin_mrc {
    type: string
    sql: ${TABLE}.MarginMRC ;;
  }

  dimension: margin_nrc {
    type: string
    sql: ${TABLE}.MarginNRC ;;
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

  dimension: nni1 {
    type: string
    sql: ${TABLE}.NNI1 ;;
  }

  dimension: nni2 {
    type: string
    sql: ${TABLE}.NNI2 ;;
  }

  dimension: nnis {
    type: string
    sql: ${TABLE}.NNIs ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.Number ;;
  }

  dimension: portal_profile_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PortalProfileID ;;
  }

  dimension: price_comments {
    type: string
    sql: ${TABLE}.PriceComments ;;
  }

  dimension: price_manager_login {
    type: string
    sql: ${TABLE}.PriceManagerLogin ;;
  }

  dimension: provisioning_manager_login {
    type: string
    sql: ${TABLE}.ProvisioningManagerLogin ;;
  }

  dimension: quote_export_template {
    type: string
    sql: ${TABLE}.QuoteExportTemplate ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: service_delivery_manager_login {
    type: string
    sql: ${TABLE}.ServiceDeliveryManagerLogin ;;
  }

  dimension: service_manager_login {
    type: string
    sql: ${TABLE}.ServiceManagerLogin ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: term_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TermID ;;
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
      group_name,
    segment,
  commercial_login
    ]
  }
}
