view: customer_logs {
  sql_table_name: dbo.CustomerLogs ;;

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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: force_price_manager {
    type: string
    sql: ${TABLE}.ForcePriceManager ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
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
      customers.id,
      customers.name,
      customers.group_name,
      terms.id,
      terms.name
    ]
  }
}
