view: countries {
  sql_table_name: Fernanda_thesis.Countries ;;

  dimension: country {
    primary_key: yes
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: agriculture {
    type: number
    sql: ${TABLE}.Agriculture ;;
  }

  dimension: arable____ {
    type: number
    sql: ${TABLE}.Arable____ ;;
  }

  dimension: area__sq__mi__ {
    type: number
    sql: ${TABLE}.Area__sq__mi__ ;;
  }

  dimension: birthrate {
    type: number
    sql: ${TABLE}.Birthrate ;;
  }

  dimension: climate {
    type: number
    sql: ${TABLE}.Climate ;;
  }

  dimension: coastline__coast_area_ratio_ {
    type: number
    sql: ${TABLE}.Coastline__coast_area_ratio_ ;;
  }

  dimension: crops____ {
    type: number
    sql: ${TABLE}.Crops____ ;;
  }

  dimension: deathrate {
    type: number
    sql: ${TABLE}.Deathrate ;;
  }

  dimension: gdp____per_capita_ {
    type: number
    sql: ${TABLE}.GDP____per_capita_ ;;
  }

  dimension: industry {
    type: number
    sql: ${TABLE}.Industry ;;
  }

  dimension: infant_mortality__per_1000_births_ {
    type: number
    sql: ${TABLE}.Infant_mortality__per_1000_births_ ;;
  }

  dimension: literacy____ {
    type: number
    sql: ${TABLE}.Literacy____ ;;
  }

  dimension: net_migration {
    type: number
    sql: ${TABLE}.Net_migration ;;
  }

  dimension: other____ {
    type: number
    sql: ${TABLE}.Other____ ;;
  }

  dimension: phones__per_1000_ {
    type: number
    sql: ${TABLE}.Phones__per_1000_ ;;
  }

  dimension: pop__density__per_sq__mi__ {
    type: number
    sql: ${TABLE}.Pop__Density__per_sq__mi__ ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.Population ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: service {
    type: number
    sql: ${TABLE}.Service ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
