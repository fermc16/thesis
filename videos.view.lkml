view: videos {
 derived_table: {
  sql:
      WITH QUERY AS (
      SELECT 'Canada' as country, *
      FROM Fernanda_thesis.Videos_CA
      UNION ALL
      SELECT  'Canada'  as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_CA1
      UNION ALL
      SELECT  'Brazil' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_BR
      UNION ALL
      SELECT 'Germany' as country, *
      FROM Fernanda_thesis.Videos_DE
      UNION ALL
      SELECT  'Germany' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_DE1
      UNION ALL
      SELECT 'France' as country, *
      FROM Fernanda_thesis.Videos_FR
      UNION ALL
      SELECT  'France' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_FR1
      UNION ALL
      SELECT 'United Kingdom' as country, *
      FROM Fernanda_thesis.Videos_GB
      UNION ALL
      SELECT  'United Kingdom' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_GB1
      UNION ALL
      SELECT  'Ireland' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_IE
      UNION ALL
      SELECT 'India' as country, *
      FROM Fernanda_thesis.Videos_IN
      UNION ALL
      SELECT  'India' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_IN1
      UNION ALL
      SELECT 'Japan' as country, *
      FROM Fernanda_thesis.Videos_JP
      UNION ALL
      SELECT  'Japan' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_JP1
      UNION ALL
      SELECT 'Korea, South' as country, *
      FROM Fernanda_thesis.Videos_KR
      UNION ALL
      SELECT  'Korea, South' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_KR1
      UNION ALL
      SELECT 'Mexico' as country, *
      FROM Fernanda_thesis.Videos_MX
      UNION ALL
      SELECT  'Mexico' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_MX1
      UNION ALL
      SELECT 'Russia' as country, *
      FROM Fernanda_thesis.Videos_RU
      UNION ALL
      SELECT 'Russia' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_RU1
      UNION ALL
      SELECT 'United States' as country, *
      FROM Fernanda_thesis.Videos_US
      UNION ALL
      SELECT  'United States' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_US1
      UNION ALL
      SELECT  'Venezuela' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_VE)

      SELECT GENERATE_UUID() as pk, * FROM QUERY ;;
}

  dimension: pk {
    primary_key: yes
    type: string
    sql: ${TABLE}.pk ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
    # map_layer_name: countries_map_layer
  }

  dimension: country_map {
    map_layer_name: countries_map_layer
    type: string
    case: {
      when: {
        sql: ${country} LIKE '%United States%';;
        label: "United States of America"
      }
      when: {
        sql: ${country} LIKE '%Canada%';;
        label: "Canada"
      }
      when: {
        sql: ${country} LIKE '%Ireland%';;
        label: "Ireland"
      }
      when: {
        sql: ${country} LIKE '%Russia%';;
        label: "Russia"
      }
      when: {
        sql: ${country} LIKE '%Mexico%';;
        label: "Mexico"
      }
      when: {
        sql: ${country} LIKE '%Venezuela%';;
        label: "Venezuela"
      }
      when: {
        sql: ${country} LIKE '%United Kingdom%';;
        label: "United Kingdom"
      }
      when: {
        sql: ${country} LIKE '%Brazil%';;
        label: "Brazil"
      }
      when: {
        sql: ${country} LIKE '%Japan%';;
        label: "Japan"
      }
      when: {
        sql: ${country} LIKE '%India%';;
        label: "India"
      }
      when: {
        sql: ${country} LIKE '%Germany%';;
        label: "Germany"
      }
      when: {
        sql: ${country} LIKE '%Korea%';;
        label: "South Korea"
      }
      when: {
        sql: ${country} LIKE '%France%';;
        label: "France"
      }
      else: "unknown"
      }
  }

  measure: dummy {
    type: number
    sql: 1=1 ;;
    drill_fields: [channel_title]
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
    drill_fields: [channel_title, publish_year]
    # link: {label: "Test Dimension Drill" url: "{{ dummy._link }}&sorts=publish_year+desc" }

    link: {label: "tetsy"
    url: "
    {% assign filter_config = '{}' %}
    {% assign vis_config = '
    {\"type\":\"table\"}' %}

    {{ dummy._link }}&pivots=publish_year"
  }
  }

  dimension: channel_title {
    type: string
    sql: ${TABLE}.channel_title ;;
  }

  dimension: comment_count {
    type: number
    sql: ${TABLE}.comment_count ;;
  }

  dimension: comments_disabled {
    type: yesno
    sql: ${TABLE}.comments_disabled ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: dislikes {
    type: number
    sql: ${TABLE}.dislikes ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension_group: publish {
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
    sql: ${TABLE}.publish_time ;;
  }

  dimension: publish_dates {
    type: date
    sql: ${publish_date} ;;
  }

  dimension: ratings_disabled {
    type: yesno
    sql: ${TABLE}.ratings_disabled ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: thumbnail_link {
    type: string
    sql: ${TABLE}.thumbnail_link ;;
    html: <img src={{value}} style="width:100%;height:100%;"> ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: title_length{
    type: tier
    tiers: [0,20,40,60,80,100]
    style: integer
    sql: CHAR_LENGTH(${TABLE}.title);;
    value_format: "$#,##0"
    html: <p style="text-align:center">{{ value }}</p>;;
  }

  dimension: Views_videos{
    type: tier
    tiers: [500000, 1000000]
    style: integer
    sql: ${views};;
  }

  dimension: Likes_videos{
    type: tier
    tiers: [5000, 40000]
    style: integer
    sql: ${likes};;
  }

  dimension: Dislikes_videos{
    type: tier
    tiers: [100,200]
    style: integer
    sql: ${dislikes};;
  }

  dimension: Comments_videos{
    type: tier
    tiers: [500, 3000]
    style: integer
    sql: ${comment_count};;
  }

  dimension: youtube_banner {
    sql: ${pk};;
    html: <img src="https://www.lifewire.com/thmb/GOhZXvhYk5iDSQXv5nS9UTbtLiU=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/YouTube_logo_2015.svg-57ebbd433df78c690fc6ffa0.png" style="width:72%;height:72%;"> ;;
  }

  dimension_group: trending {
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
    sql: PARSE_TIMESTAMP("%Y.%d.%m", CONCAT('20',${TABLE}.trending_date)) ;;
  }

  dimension: video_error_or_removed {
    type: yesno
    sql: ${TABLE}.video_error_or_removed ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  dimension: days_diff {
    type: number
    sql: DATE_DIFF(${trending_date},${publish_date}, DAY) ;;
  }

  dimension: Days_diff_buckets{
    type: tier
    tiers: [1, 2, 3, 4, 5]
    style: integer
    sql: ${days_diff};;
  }

  dimension: Publish_Hour {
    type: number
    sql: EXTRACT(HOUR FROM TIMESTAMP ${publish_time}) ;;
    drill_fields: [Publish_Day, Publish_Hour, count_summer]
  }

  dimension: Month {
    type: number
    sql: EXTRACT(MONTH FROM TIMESTAMP ${publish_time}) ;;
  }

  dimension: Publish_Month{
    type: string
    case: {
      when: {
        sql: ${Month} = 12 OR ${Month} = 1 OR ${Month} = 2;;
        label: "Winter"
      }
      when: {
        sql: ${Month} = 3 OR ${Month} = 4 OR ${Month} = 5;;
        label: "Spring"
      }
      when: {
        sql: ${Month} = 6 OR ${Month} = 7 OR ${Month} = 8;;
        label: "Summer"
      }
      when: {
        sql: ${Month} = 9 OR ${Month} = 10 OR ${Month} = 11;;
        label: "Autumn"
      }
      else: "-"
    }
  }

  dimension: Day_week_number {
    type: number
    sql: mod(DATE_DIFF(${publish_date}, date(2008,01,01), DAY) + 1, 7) ;;
  }

  dimension: Publish_Day{
    type: string
    case: {
      when: {
        sql: ${Day_week_number} = 0;;
        label: "Monday"
      }
      when: {
        sql: ${Day_week_number} = 1;;
        label: "Tuesday"
      }
      when: {
        sql: ${Day_week_number} = 2;;
        label: "Wednesday"
      }
      when: {
        sql: ${Day_week_number} = 3;;
        label: "Thursday"
      }
      when: {
        sql: ${Day_week_number} = 4;;
        label: "Friday"
      }
      when: {
        sql: ${Day_week_number} = 5;;
        label: "Saturday"
      }
      when: {
        sql: ${Day_week_number} = 6;;
        label: "Sunday"
      }
      else: "-"
      }
  }

  measure: view_sum {
    type: sum
    sql: ${views} ;;
  }

  measure: view_avg {
    type: average
    sql: ${views} ;;
  }

  measure: comment_sum {
    type: sum
    sql: ${comment_count} ;;
  }

  measure: comment_avg {
    type: average
    sql: ${comment_count} ;;
  }

  measure: likes_sum {
    type: sum
    sql: ${likes} ;;
  }

  measure: likes_avg {
    type: average
    sql: ${likes} ;;
  }

  measure: dislikes_sum {
    type: sum
    sql: ${dislikes} ;;
  }

  measure: dislikes_avg {
    type: average
    sql: ${dislikes} ;;
  }

  measure: videos_percent_gauge {
    type: number
    sql: 100.0*${count}/423938 ;;
#     sql:  ${count_distinct} ;;
    value_format: "#.0\%"
    html:
    <div class="alert alert-info vis">
    <br>
    {% if rendered_value == '.8%' %}
      <p><img height="100%" width="100%" src="https://chart.googleapis.com/chart?chs=300x200&cht=gom&chma=0,0,0,0&chxt=y&chco=009A49,FFFFFF,FF7900&chf=bg,s,FFFFFF00&chl={{rendered_value}}&chd=t:{{ value }}"></p>
    {% else %}
      <p><img height="100%" width="100%" src="https://chart.googleapis.com/chart?chs=300x200&cht=gom&chma=0,0,0,0&chxt=y&chco=282828,ffffff,ff0000&chf=bg,s,FFFFFF00&chl={{rendered_value}}&chd=t:{{ value }}"></p>
    {% endif %}
    </div>;;

  }

  measure: count_distinct {
    type: count_distinct
    label: "Videos Count"
    sql: ${video_id};;
    drill_fields: [thumbnail_link, title, channel_title, publish_date, likes, dislikes, comment_count, views]
  }

  measure: count_summer {
    type: count_distinct
    sql: ${video_id};;
    filters: {
      field: Publish_Month
      value: "Summer"
    }
    drill_fields: [Publish_Day, Publish_Hour, count_summer]
    link: {label: "Publish Day and Time" url: "https://productday.dev.looker.com/looks/1334"
      icon_url: "https://youtube.com/favicon.ico"}
#     link: {label: "Publish Day and Time"
#       url: "
#   {% assign vis_config = '{\"x_axis_gridlines\":false,\"y_axis_gridlines\":true,\"show_view_names\":false,\"show_y_axis_labels\":true,\"show_y_axis_ticks\":true,\"y_axis_tick_density\":\"default\",\"y_axis_tick_density_custom\":5,\"show_x_axis_label\":true,\"show_x_axis_ticks\":true,\"y_axis_scale_mode\":\"linear\",\"x_axis_reversed\":false,\"y_axis_reversed\":false,\"plot_size_by_field\":false,\"trellis\":\"\",\"stacking\":\"\",\"limit_displayed_rows\":false,\"hidden_series\":[],\"legend_position\":\"center\",\"series_types\":{},\"point_style\":\"none\",\"show_value_labels\":false,\"label_density\":25,\"x_axis_scale\":\"auto\",\"y_axis_combined\":true,\"trend_lines\":[],\"show_null_points\":true,\"interpolation\":\"linear\",\"type\":\"sankey\"}' %}
#   {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"}
   }


  measure: count_winter {
    type: count_distinct
    # hidden: yes
    sql: ${video_id};;
    filters: {
      field: Publish_Month
      value: "Winter"
    }
    drill_fields: [Publish_Day, Publish_Hour, count_winter]
    link: {label: "Publish Day and Time" url: "https://productday.dev.looker.com/looks/1334"
      icon_url: "https://youtube.com/favicon.ico"}

    # POWERFUL DRILLL: link: {label: "Explore Top 20 Results" url: "{{ link }}&limit=20" }
  }


  measure: count_spring {
    type: count_distinct
    sql: ${video_id};;
    filters: {
      field: Publish_Month
      value: "Spring"
    }
    drill_fields: [Publish_Day, Publish_Hour, count_spring]
#     html: <a href="https://productday.dev.looker.com/looks/1334" target="_blank" >{{ value }}</a>;;
    link: {label: "Publish Day and Time" url: "https://productday.dev.looker.com/looks/1334"
      icon_url: "https://youtube.com/favicon.ico"}
  }

  measure: count_autumn {
    type: count_distinct
    sql: ${video_id};;
    filters: {
      field: Publish_Month
      value: "Autumn"
    }
    drill_fields: [user_details*, user_details2*]
    # link: {label: "Publish Day and Time" url: "https://productday.dev.looker.com/looks/1334"
    #   icon_url: "https://youtube.com/favicon.ico"}
  }

  dimension: district_overview_link {
    sql: ${video_id};;
    link: {
      label: "District Overview"
#       trending date has to be on the filters with valid values
      url: "https://productday.dev.looker.com/dashboards/313?Period={{_filters['videos.trending_date'] | url_encode }}"}
  }

    parameter: yr {
      type: unquoted
      allowed_value: {value: "2017" label:"2017"}
      allowed_value: {value: "2018" label:"2018"}
    }

    dimension: chosen_dynamic_measure  {
      hidden: yes
      sql:{% parameter yr %};;
    }

    measure: dynamic_measure {
      label_from_parameter: yr
      type: sum
      sql:
         {% if chosen_dynamic_measure._sql == "2017" %}
         ${views}
         {% else %}
         ${days_diff}
         {% endif %}
        ;;
  }


  #### BUG - always_filter with parameters
#   dimension: date {
#     label_from_parameter: timeframe_picker
#     type: date
#     sql: ${TABLE}.{% parameter timeframe_picker %} ;;
#   }

#   parameter: timeframe_picker {
#     label: "Date Granularity"
#     type: unquoted
#     allowed_value: {
#       label: "Day"
#       value: "publish_time"
#     }
#     allowed_value: {
#       label: "Week"
#       value: "dim_week"
#     }
#     allowed_value: {
#       label: "Month"
#       value: "dim_month"
#     }
#     default_value: "Day"
#   }

  measure: count {
    label: "Videos Entries Count"
    type: count
    drill_fields: [thumbnail_link, title, channel_title, publish_date, likes, dislikes, comment_count, views]
  }

  set: user_details {
    fields: [title]
  }

  set: user_details2 {
    fields: [likes, dislikes]
  }

}
