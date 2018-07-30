view: opportunity_and_sales {
  sql_table_name: dbo.OpportunityAndSales ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: familly {
    type: string
    sql: ${TABLE}.Familly ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: mrcmax {
    type: string
    sql: ${TABLE}.MRCMax ;;
  }

  dimension: mrcmin {
    type: string
    sql: ${TABLE}.MRCMin ;;
  }

  dimension: mrcost_min {
    type: string
    sql: ${TABLE}.MRCostMin ;;
  }

  dimension: opportunities {
    type: number
    sql: ${TABLE}.Opportunities ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.Quarter ;;
  }

  dimension: sale_circuits {
    type: number
    sql: ${TABLE}.SaleCircuits ;;
  }

  dimension: sale_mrc {
    type: string
    sql: ${TABLE}.SaleMRC ;;
  }

  dimension: sale_mrr {
    type: string
    sql: ${TABLE}.SaleMRR ;;
  }

  dimension: sale_mrrinc {
    type: string
    sql: ${TABLE}.SaleMRRInc ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [customers.id, customers.name, customers.group_name]
  }
}
