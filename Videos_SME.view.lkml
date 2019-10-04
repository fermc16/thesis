view: videos_sme {
  derived_table: {
    sql:
      SELECT  'United States' as country, channelTitle, trending_date
      FROM Fernanda_thesis.Videos_US1
      WHERE {% condition date_filter %} PARSE_TIMESTAMP("%Y.%d.%m", CONCAT('20',trending_date)) {% endcondition %}
      AND  {% condition channel_filter %} channelTitle {% endcondition %} ;;
  }

  dimension: pk {
    primary_key: yes
    type: string
    sql: ${TABLE}.pk ;;
  }

  dimension: channel_title {
    type: string
    sql: ${TABLE}.channelTitle ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  filter: date_filter {
    type: date
#     default_value: "{{_user_attributes['last_name']}}"
  }

  filter: channel_filter {
    type: string
    suggest_dimension: channel_title
  }

  parameter: date_format {
    type: string
    allowed_value: { value: "US" }
    allowed_value: { value: "EU" }
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

  dimension: date_formatted {
    label: "Date_formatted"
    sql: ${trending_date} ;;
    html:
    {% if date_format._parameter_value == "'US'" %}
      {{ rendered_value | date: "%m/%d/%y" }}
    {% elsif date_format._parameter_value == "'EU'" %}
      {{ rendered_value | date:  "%d/%m/%y" }}
    {% else %}
      {{ value}}
    {% endif %};;
  }

}
