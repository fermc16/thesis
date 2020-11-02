view: word_cloud {
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

select GENERATE_UUID() as pk, video_id, array_reverse(split(split(tablename.title,' ')[offset(cast(numbers.n as INT64))], ' '))[offset(0)] as parsed_title
from (
  SELECT
    p0.n
    + p1.n*2
    + p2.n * POWER(2,2)
    + p3.n * POWER(2,3)
    + p4.n * POWER(2,4)
    + p5.n * POWER(2,5)
    + p6.n * POWER(2,6)
    + p7.n * POWER(2,7)
    as n
  FROM
    (SELECT 0 as n UNION ALL SELECT 1) p0,
    (SELECT 0 as n UNION ALL SELECT 1) p1,
    (SELECT 0 as n UNION ALL SELECT 1) p2,
    (SELECT 0 as n UNION ALL SELECT 1) p3,
    (SELECT 0 as n UNION ALL SELECT 1) p4,
    (SELECT 0 as n UNION ALL SELECT 1) p5,
    (SELECT 0 as n UNION ALL SELECT 1) p6,
    (SELECT 0 as n UNION ALL SELECT 1) p7
) numbers
INNER JOIN (
  select video_id, title
  from videos
  limit 1000
 ) as tablename
on CHAR_LENGTH(tablename.title) - CHAR_LENGTH(REPLACE(tablename.title, ' ', '')) >= numbers.n
group by video_id, parsed_title
order by video_id
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: pk {
    primary_key: yes
    type: string
    sql: ${TABLE}.pk;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: parsed_title {
    type: string
    sql: REGEXP_EXTRACT(trim(lower(${TABLE}.parsed_title)), r"^[a-zA-Z_.+-]+") ;;
  }

  measure: word_count {
    type: sum
    sql: ${parsed_title} ;;
  }
  set: detail {
    fields: [video_id, parsed_title]
  }
}
