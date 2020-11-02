view: countries {
  sql_table_name: Fernanda_thesis.Countries ;;

  dimension: country {
    primary_key: yes
    sql: trim(${TABLE}.Country);;
    map_layer_name: countries_map_layer
  }

  dimension: neighborhood {
    sql: trim(${country}) ;;
    map_layer_name: countries_map_layer
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

  dimension: flag {
    type: string
    sql: ${country};;
#     html: <img src="https://logo-core.clearbit.com/looker.com" /> ;;
    html: {% if value == 'Brazil' %}
      <img src="http://www.flags.net/images/largeflags/BRAZ0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'Canada' %}
      <img src="http://www.flags.net/images/largeflags/CANA0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'France' %}
      <img src="http://www.flags.net/images/largeflags/FRAN0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'Germany' %}
      <img src="http://www.flags.net/images/largeflags/GERM0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'India' %}
      <img src="http://www.flags.net/images/largeflags/INDA0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'Ireland' %}
      <img src="http://www.flags.net/images/largeflags/IREL0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'Japan' %}
      <img src="http://www.flags.net/images/largeflags/JAPA0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'United Kingdom' %}
      <img src="http://www.flags.net/images/largeflags/UNKG0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'Russia' %}
      <img src="http://www.flags.net/images/largeflags/RUSS0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'Korea, South' %}
      <img src="http://www.flags.net/images/largeflags/SKOR0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'Mexico' %}
      <img src="http://www.flags.net/images/largeflags/MEXC0001.GIF"style="width:100%;height:100%;">
     {% elsif value == 'Venezuela' %}
      <img src="http://www.flags.net/images/largeflags/VENZ0001.GIF"style="width:100%;height:100%;">
      {% elsif value == 'United States' %}
      <img src="http://www.flags.net/images/largeflags/UNST0001.GIF"style="width:100%;height:100%;">
     {% else  %}
      <img src="http://www.flags.net/images/largeflags/IREL0001.GIF"style="width:100%;height:100%;">
    {% endif %} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
