view: mean_time_to_sell_by_customer {
  sql_table_name: dbo.MeanTimeToSellByCustomer ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: mean_time_to_sell {
    type: number
    sql: ${TABLE}.MeanTimeToSell ;;
  }

  measure: count {
    type: count
    drill_fields: [customers.id, customers.name, customers.group_name]
  }
}
