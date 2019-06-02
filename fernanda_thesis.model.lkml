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
    sql_on: ${videos.country} =${countries.country} ;;
    relationship: many_to_one
  }

  join: categories {
    type: left_outer
    sql_on: ${videos.category_id} =${categories.id} ;;
    relationship: many_to_one
  }
}

explore: countries {}

explore: categories {}
