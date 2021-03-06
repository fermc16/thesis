view: rank_trending_duration {
  derived_table: {
    sql: WITH videos AS (WITH QUERY AS (
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

      SELECT GENERATE_UUID() as pk, * FROM QUERY )
SELECT
  videos.video_id AS videos_id,
  videos.title  AS videos_title,
  videos.country AS videos_country,
  videos.thumbnail_link AS videos_thumbnail_link,
  RANK() OVER (PARTITION BY country ORDER BY COUNT(*) DESC) AS rank,
  COUNT(*) AS videos_count
FROM videos

GROUP BY 1,2,3,4
ORDER BY 2
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: videos_id {
    type: string
    sql: ${TABLE}.videos_id ;;
  }

  dimension: videos_title {
    type: string
    sql: replace(${TABLE}.videos_title, ',', ' ') ;;
  }

  dimension: videos_thumbnail_link {
    type: string
    sql: ${TABLE}.videos_thumbnail_link ;;
    html: <a href="https://www.youtube.com/watch?v={{ videos_id._value }}" target="_blank" ><img src="{{ value }}" style="width:50%;height:100%;"></a>;;
  }

  dimension: video_link {
    sql: ${videos_id} ;;
    link: {
      label: "https://www.youtube.com/watch?v={{value}}"
      url: "https://www.youtube.com/watch?v={{value}}"
      icon_url : "https://www.youtube.com/favicon.ico"
    }
  }

  dimension: videos_country {
    type: string
    sql: ${TABLE}.videos_country ;;
  }

  dimension: videos_count {
    type: number
    sql: ${TABLE}.videos_count ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  measure: max_count{
    type: max
    sql: ${videos_count} ;;
    drill_fields: [videos_thumbnail_link, videos_title, videos_country]
  }

  set: detail {
    fields: [videos_title, videos_country, videos_count]
  }
}
