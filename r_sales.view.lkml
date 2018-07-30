view: r_sales {
  sql_table_name: dbo.r_Sales ;;

  dimension: bwgroup_min {
    type: string
    sql: ${TABLE}.BWGroupMin ;;
  }

  dimension: commercial_manager_name {
    type: string
    sql: ${TABLE}.CommercialManagerName ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  dimension: familly_min {
    type: string
    sql: ${TABLE}.FamillyMin ;;
  }

  dimension: mrc {
    type: string
    sql: ${TABLE}.MRC ;;
  }

  dimension: mrcsale {
    type: string
    sql: ${TABLE}.MRCSale ;;
  }

  dimension: oportunities {
    type: number
    sql: ${TABLE}.Oportunities ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [commercial_manager_name, customer_name]
  }
}
