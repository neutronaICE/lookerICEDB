view: subsidiaries {
  sql_table_name: dbo.Subsidiaries ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: activate_billing {
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
    sql: ${TABLE}.ActivateBIllingDate ;;
  }

  dimension: activate_billing_login {
    type: string
    sql: ${TABLE}.ActivateBIllingLogin ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: baddress {
    type: string
    sql: ${TABLE}.BAddress ;;
  }

  dimension: baddress2 {
    type: string
    sql: ${TABLE}.BAddress2 ;;
  }

  dimension: bcity {
    type: string
    sql: ${TABLE}.BCity ;;
  }

  dimension: bcountry {
    type: string
    sql: ${TABLE}.BCountry ;;
  }

  dimension: billing_entity_id {
    type: number
    sql: ${TABLE}.BillingEntityID ;;
  }

  dimension: blat {
    type: number
    sql: ${TABLE}.BLat ;;
  }

  dimension: blng {
    type: number
    sql: ${TABLE}.BLng ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
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

  dimension: customer_balance {
    type: string
    sql: ${TABLE}.CustomerBalance ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: exclude_billing {
    type: string
    sql: ${TABLE}.ExcludeBilling ;;
  }

  dimension: invoice_emails {
    type: string
    sql: ${TABLE}.InvoiceEmails ;;
  }

  dimension: invoice_terms {
    type: number
    sql: ${TABLE}.InvoiceTerms ;;
  }

  dimension: is_default {
    type: string
    sql: ${TABLE}.IsDefault ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.Lng ;;
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

  dimension: number {
    type: string
    sql: ${TABLE}.Number ;;
  }

  dimension: quore_id {
    type: number
    sql: ${TABLE}.QuoreID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, customers.id, customers.name, customers.group_name]
  }
}
