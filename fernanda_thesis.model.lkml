connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "*.view"

datagroup: fernanda_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fernanda_thesis_default_datagroup

explore: videos {
  join: countries {
    type: left_outer
    sql_on: trim(${videos.country}) =trim(${countries.country}) ;;
    relationship: many_to_one
  }

  join: categories {
    type: left_outer
    sql_on: ${videos.category_id} =${categories.id} ;;
    relationship: many_to_one
  }

  join: word_cloud {
    type: left_outer
    sql_on: ${videos.video_id} =${word_cloud.video_id} ;;
    relationship: many_to_one
  }
}

explore: countries {}

explore: categories {}

explore: word_cloud{}

explore: rank_trending_duration {}

map_layer: countries_map_layer {
  file: "map.topojson"
  property_key: "name"
}
