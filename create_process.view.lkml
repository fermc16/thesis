view: create_process {
  derived_table: {
    sql_trigger_value: select current_date ;;
    create_process: {
      sql_step:
      create table temp1 as
      SELECT
      temp1
      FROM Fernanda_thesis.Countries;;

      sql_step:
        delete from temp1 where Country LIKE 'Colombia';;
      sql_step: select * from temp1 ;;
      }
      }

  dimension: country {
    primary_key: yes
    sql: trim(${TABLE}.Country);;
  }
  }
