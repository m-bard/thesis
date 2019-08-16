view: aac_outcomes {
  sql_table_name: austin_animal_shelter_intakes_and_outcomes.aac_outcomes ;;

  dimension: age_upon_outcome {
    type: string
    sql: ${TABLE}.age_upon_outcome ;;
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

  dimension_group: date_of_birth {
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
    sql: ${TABLE}.date_of_birth ;;
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

  dimension_group: monthyear {
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
    sql: ${TABLE}.monthyear ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: outcome_subtype {
    type: string
    sql: ${TABLE}.outcome_subtype ;;
  }

  dimension: outcome_type {
    type: string
    sql: ${TABLE}.outcome_type ;;
  }

  dimension: sex_upon_outcome {
    type: string
    sql: ${TABLE}.sex_upon_outcome ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
