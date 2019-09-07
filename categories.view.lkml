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
    link: {
      label: "Dashboard B filtering {{ value }} "
      url: "https://productday.dev.looker.com/dashboards/410?Date Filter={{ _filters['videos.publish_date'] }}&Country=Brazil&Category={{ value | url_encode}}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
    link: {
      label: "Explore {{ value }}"
      url: "https://productday.dev.looker.com/explore/fernanda_thesis/videos?fields=categories.title,videos.count_summer,videos.count_winter,videos.title&f[videos.publish_date]={{ _filters['videos.publish_date'] }}&f[videos.country]=Ireland&f[categories.title]={{ value | url_encode}}"
      icon_url: "https://looker.com/favicon.ico"
    }
  }


  dimension: title_color {
    type: number
    sql:  CASE WHEN ${title}= "Comedy" THEN 1
    WHEN ${title}= "Drama" THEN 2
    END;;
    html:  {{categories.title._value}} ;;
  }


  dimension: is_valid{
    type: yesno
    sql: CASE WHEN
      ${title_color} IS NULL
      THEN TRUE
      ELSE FALSE
    END;;
  }

  dimension_group: date {
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
    sql: current_date() ;;
  }


  measure: count {
    type: count
    drill_fields: [id]
  }
}
