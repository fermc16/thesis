view: categories {
  sql_table_name: Fernanda_thesis.Categories ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country {
    hidden: yes
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: etag {
    type: string
    sql: ${TABLE}.etag ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: snippet_assignable {
    type: yesno
    sql: ${TABLE}.snippet_assignable ;;
  }

  dimension: snippet_channel_id {
    type: string
    sql: ${TABLE}.snippet_channelId ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
