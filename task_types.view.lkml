view: task_types {
  sql_table_name: dbo.TaskTypes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: icon_class {
    type: string
    sql: ${TABLE}.IconClass ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.Password ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, task_type_logins.count]
  }
}
