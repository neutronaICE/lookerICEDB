view: backbone_links_media_type {
  sql_table_name: dbo.BackboneLinksMediaType ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, backbone_links.count]
  }
}
