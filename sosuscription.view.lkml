view: sosuscription {
  sql_table_name: dbo.SOSuscription ;;

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.Login ;;
  }

  dimension: soid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.SOID ;;
  }

  measure: count {
    type: count
    drill_fields: [sos.id]
  }
}
