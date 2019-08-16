view: aac_intakes {
  sql_table_name: austin_animal_shelter_intakes_and_outcomes.aac_intakes ;;

  dimension: age_upon_intake {
    type: string
    sql: ${TABLE}.age_upon_intake ;;
  }

  dimension: animal_id {
    type: string
    sql: ${TABLE}.animal_id ;;
  }

  dimension: animal_type {
    type: string
    sql: ${TABLE}.animal_type ;;
  }

  dimension: breed {
    type: string
    sql: ${TABLE}.breed ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension_group: datetime {
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
    sql: ${TABLE}.datetime ;;
  }

  dimension_group: datetime2 {
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
    sql: ${TABLE}.datetime2 ;;
  }

  dimension: found_location {
    type: string
    sql: ${TABLE}.found_location ;;
  }

  dimension: intake_condition {
    type: string
    sql: ${TABLE}.intake_condition ;;
  }

  dimension: intake_type {
    type: string
    sql: ${TABLE}.intake_type ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sex_upon_intake {
    type: string
    sql: ${TABLE}.sex_upon_intake ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
