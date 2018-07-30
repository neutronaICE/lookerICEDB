view: agreements {
  sql_table_name: dbo.Agreements ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: activation {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ActivationDate ;;
  }

  dimension: agreement_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AgreementTypeID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: contract_term {
    type: number
    sql: ${TABLE}.ContractTerm ;;
  }

  dimension: contract_term2 {
    type: number
    sql: ${TABLE}.ContractTerm2 ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: document_count {
    type: number
    sql: ${TABLE}.DocumentCount ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.Frequency ;;
  }

  dimension_group: issue {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.IssueDate ;;
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

  dimension: mrc {
    type: string
    sql: ${TABLE}.MRC ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension_group: next_maturity {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NextMaturityDate ;;
  }

  dimension: nrc {
    type: string
    sql: ${TABLE}.NRC ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.ParentID ;;
  }

  dimension: pre_paid {
    type: string
    sql: ${TABLE}.PrePaid ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderID ;;
  }

  dimension: provider_reference {
    type: string
    sql: ${TABLE}.ProviderReference ;;
  }

  dimension: segment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SegmentID ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceID ;;
  }

  dimension: signer {
    type: string
    sql: ${TABLE}.Signer ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension_group: state_change {
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
    sql: ${TABLE}.StateChangeTime ;;
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
      agreement_types.id,
      agreement_types.name,
      providers.id,
      providers.name,
      providers.legal_name,
      segments.id,
      segments.name,
      services.id,
      agreement_documents.count
    ]
  }
}
