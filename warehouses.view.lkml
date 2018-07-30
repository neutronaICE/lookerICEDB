view: warehouses {
  sql_table_name: dbo.Warehouses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: geo_type {
    type: string
    sql: ${TABLE}.GeoType ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.Lng ;;
  }

  dimension: local_contact {
    type: string
    sql: ${TABLE}.LocalContact ;;
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

  dimension: parent_id {
    type: number
    sql: ${TABLE}.ParentID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, inventory_items.count]
  }
}
