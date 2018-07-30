view: pages {
  sql_table_name: dbo.Pages ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: avg_elapsed {
    type: number
    sql: ${TABLE}.AvgElapsed ;;
  }

  dimension: caption {
    type: string
    sql: ${TABLE}.Caption ;;
  }

  dimension: commands {
    type: number
    sql: ${TABLE}.Commands ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}.Hits ;;
  }

  dimension: linked {
    type: number
    sql: ${TABLE}.Linked ;;
  }

  dimension: links {
    type: number
    sql: ${TABLE}.Links ;;
  }

  dimension: module {
    type: string
    sql: ${TABLE}.Module ;;
  }

  dimension: roles {
    type: string
    sql: ${TABLE}.Roles ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: submodule {
    type: string
    sql: ${TABLE}.Submodule ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, page_commands.count, page_links.count]
  }
}
