view: products {
  sql_table_name: dbo.Products ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
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

  dimension: deferred_type {
    type: string
    sql: ${TABLE}.DeferredType ;;
  }

  dimension: familly {
    type: string
    sql: ${TABLE}.Familly ;;
  }

  dimension: has_backbone {
    type: string
    sql: ${TABLE}.HasBackbone ;;
  }

  dimension: has_device {
    type: string
    sql: ${TABLE}.HasDevice ;;
  }

  dimension: has_local_loop {
    type: string
    sql: ${TABLE}.HasLocalLoop ;;
  }

  dimension: has_nni {
    type: string
    sql: ${TABLE}.HasNNI ;;
  }

  dimension: has_points {
    type: string
    sql: ${TABLE}.HasPoints ;;
  }

  dimension: is_on_net {
    type: string
    sql: ${TABLE}.IsOnNet ;;
  }

  dimension: margin {
    type: string
    sql: ${TABLE}.Margin ;;
  }

  dimension: margin_mrc {
    type: string
    sql: ${TABLE}.MarginMRC ;;
  }

  dimension: margin_nrc {
    type: string
    sql: ${TABLE}.MarginNRC ;;
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

  dimension: mrraccount_id {
    type: number
    sql: ${TABLE}.MRRAccountID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: netsuite_item_mrr {
    type: string
    sql: ${TABLE}.NetsuiteItemMRR ;;
  }

  dimension: netsuite_item_nrr {
    type: string
    sql: ${TABLE}.NetsuiteItemNRR ;;
  }

  dimension: nrraccount_id {
    type: number
    sql: ${TABLE}.NRRAccountID ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.ParentID ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.Pos ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.ProductCategoryID ;;
  }

  dimension: product_type_id {
    type: string
    sql: ${TABLE}.ProductTypeID ;;
  }

  dimension: properties {
    type: string
    sql: ${TABLE}.Properties ;;
  }

  dimension: selectable {
    type: string
    sql: ${TABLE}.Selectable ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: use_cpe {
    type: string
    sql: ${TABLE}.UseCPE ;;
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
      backbone_prices.count,
      commision_settlements.count,
      inventory_items.count,
      invoice_items.count,
      price_approval_matrix.count,
      price_requests.count,
      product_properties.count,
      quote_items.count,
      quote_item_versions.count,
      quote_sales.count,
      quote_sales_backup.count,
      service_orders.count,
      service_order_type_products.count,
      services.count,
      tmp_bkp_services.count
    ]
  }
}
