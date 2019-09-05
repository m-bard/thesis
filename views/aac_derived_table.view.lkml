view: aac_derived_table {
  derived_table: {
    sql: SELECT
        animal_id
        , ROW_NUMBER() OVER(PARTITION BY animal_id ORDER BY datetime ASC) AS intake_number
        , datetime
      FROM austin_animal_center_shelter_intakes_and_outcomes.aac_intakes
      GROUP BY animal_id
      ;;
      sql_trigger_value: SELECT 1 ;;
  }
  dimension: animal_id {
    type: number
    sql: ${TABLE}.animal_id ;;
  }
  dimension: intake_number {
    type: number
    sql: ${TABLE}.intake_number ;;
  }
  dimension:datetime{
    type: date
    sql: ${TABLE}.datetime ;;
  }
}
