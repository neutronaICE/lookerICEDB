view: hit_rate_by_customer {
  sql_table_name: dbo.HitRateByCustomer ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: hit_rate {
    type: number
    sql: ${TABLE}.HitRate ;;
  }

  measure: count {
    type: count
    drill_fields: [customers.id, customers.name, customers.group_name]
  }
}
