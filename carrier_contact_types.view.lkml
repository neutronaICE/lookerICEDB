view: carrier_contact_types {
  sql_table_name: dbo.CarrierContactTypes ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
