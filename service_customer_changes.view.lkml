view: service_customer_changes {
  sql_table_name: dbo.ServiceCustomerChanges ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension: new_customer_id {
    type: number
    sql: ${TABLE}.NewCustomerID ;;
  }

  dimension: new_subsidiary_id {
    type: number
    sql: ${TABLE}.NewSubsidiaryID ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: subsidiary_id {
    type: number
    sql: ${TABLE}.SubsidiaryID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, services.id, customers.id, customers.name, customers.group_name]
  }
}
