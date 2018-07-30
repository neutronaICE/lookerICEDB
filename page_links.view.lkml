view: page_links {
  sql_table_name: dbo.PageLinks ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: caption {
    type: string
    sql: ${TABLE}.Caption ;;
  }

  dimension: page_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PageID ;;
  }

  dimension: parameters {
    type: string
    sql: ${TABLE}.Parameters ;;
  }

  dimension: roles {
    type: string
    sql: ${TABLE}.Roles ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  measure: count {
    type: count
    drill_fields: [id, pages.id]
  }
}
