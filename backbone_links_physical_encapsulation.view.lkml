view: backbone_links_physical_encapsulation {
  sql_table_name: dbo.BackboneLinksPhysicalEncapsulation ;;

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
