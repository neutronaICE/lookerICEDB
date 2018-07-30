view: page_commands {
  sql_table_name: dbo.PageCommands ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: caption {
    type: string
    sql: ${TABLE}.Caption ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: command {
    type: string
    sql: ${TABLE}.Command ;;
  }

  dimension: conn_string {
    type: string
    sql: ${TABLE}.ConnString ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.Content ;;
  }

  dimension: page_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PageID ;;
  }

  dimension: roles {
    type: string
    sql: ${TABLE}.Roles ;;
  }

  measure: count {
    type: count
    drill_fields: [id, pages.id]
  }
}
