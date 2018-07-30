view: mail_attachments {
  sql_table_name: dbo.MailAttachments ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
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

  dimension: filename {
    type: string
    sql: ${TABLE}.Filename ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}."Key" ;;
  }

  dimension: mail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MailID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, filename, mails.id]
  }
}
