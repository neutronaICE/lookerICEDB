view: service_order_risk_types {
  sql_table_name: dbo.ServiceOrderRiskTypes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: contingency_planning {
    type: string
    sql: ${TABLE}.ContingencyPlanning ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.Pos ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.Priority ;;
  }

  dimension: root_cause {
    type: string
    sql: ${TABLE}.RootCause ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, service_order_risk_logs.count, service_order_risks.count]
  }
}
