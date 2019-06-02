view: videos {
 derived_table: {
  sql:
      WITH QUERY AS (
      SELECT 'Canada ' as country, *
      FROM Fernanda_thesis.Videos_CA
      UNION ALL
      SELECT  'Canada '  as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_CA1
      UNION ALL
      SELECT  'Brazil ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_BR
      UNION ALL
      SELECT 'Germany ' as country, *
      FROM Fernanda_thesis.Videos_DE
      UNION ALL
      SELECT  'Germany ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_DE1
      UNION ALL
      SELECT 'France ' as country, *
      FROM Fernanda_thesis.Videos_FR
      UNION ALL
      SELECT  'France ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_FR1
      UNION ALL
      SELECT 'United Kingdom ' as country, *
      FROM Fernanda_thesis.Videos_GB
      UNION ALL
      SELECT  'United Kingdom ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_GB1
      UNION ALL
      SELECT  'Ireland ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_IE
      UNION ALL
      SELECT 'India ' as country, *
      FROM Fernanda_thesis.Videos_IN
      UNION ALL
      SELECT  'India ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_IN1
      UNION ALL
      SELECT 'Japan ' as country, *
      FROM Fernanda_thesis.Videos_JP
      UNION ALL
      SELECT  'Japan ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_JP1
      UNION ALL
      SELECT 'Korea, South ' as country, *
      FROM Fernanda_thesis.Videos_KR
      UNION ALL
      SELECT  'Korea, South ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_KR1
      UNION ALL
      SELECT 'Mexico ' as country, *
      FROM Fernanda_thesis.Videos_MX
      UNION ALL
      SELECT  'Mexico ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_MX1
      UNION ALL
      SELECT 'Russia ' as country, *
      FROM Fernanda_thesis.Videos_RU
      UNION ALL
      SELECT 'Russia ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_RU1
      UNION ALL
      SELECT 'United States ' as country, *
      FROM Fernanda_thesis.Videos_US
      UNION ALL
      SELECT  'United States ' as country, video_id, trending_date, title, channelTitle,
      categoryId, publishedAt, tags, view_count, likes, dislikes, comment_count, thumbnail_link,
      comments_disabled, ratings_disabled, false as video_error_or_removed, description
      FROM Fernanda_thesis.Videos_US1
      UNION ALL
      SELECT  'Venezuela ' as country, video_id, trending_date, title, channelTitle,
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
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
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
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: trending_date {
    type: string
    sql: ${TABLE}.trending_date ;;
  }

  dimension: video_error_or_removed {
    type: yesno
    sql: ${TABLE}.video_error_or_removed ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  measure: count {
    type: count
    drill_fields: [video_id]
  }
}
