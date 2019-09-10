view: aac_intakes_outcomes {
  sql_table_name: austin_animal_shelter_intakes_and_outcomes.aac_intakes_outcomes ;;

  dimension: age_upon_intake {
    type: string
    sql: ${TABLE}.age_upon_intake ;;
  }

  dimension: age_upon_intake__days_ {
    type: number
    sql: ${TABLE}.age_upon_intake__days_ ;;
  }

  dimension: age_upon_intake__years_ {
    type: number
    sql: CASE
          WHEN ${TABLE}.age_upon_intake__years_ < 1 THEN 0
          WHEN ${TABLE}.age_upon_intake__years_ >= 1 AND ${TABLE}.age_upon_intake__years_ < 2 THEN 1
          ELSE ${TABLE}.age_upon_intake__years_
        END ;;
        value_format_name: decimal_0
  }

  dimension: age_upon_intake_age_group {
    type: string
    sql: ${TABLE}.age_upon_intake_age_group ;;
  }

  dimension: age_upon_outcome {
    type: string
    sql: ${TABLE}.age_upon_outcome ;;
  }

  dimension: age_upon_outcome__days_ {
    type: number
    sql: ${TABLE}.age_upon_outcome__days_ ;;
  }

  dimension: age_upon_outcome__years_ {
    type: number
    sql: ${TABLE}.age_upon_outcome__years_ ;;
  }

  dimension: age_upon_outcome_age_group {
    type: string
    sql: ${TABLE}.age_upon_outcome_age_group ;;
  }

  dimension: animal_id_intake {
    type: string
    sql: ${TABLE}.animal_id_intake ;;
  }

  dimension: animal_id_outcome {
    type: string
    sql: ${TABLE}.animal_id_outcome ;;
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

  dimension: dob_month {
    type: number
    sql: ${TABLE}.dob_month ;;
  }

  dimension: dob_monthyear {
    type: string
    sql: ${TABLE}.dob_monthyear ;;
  }

  dimension: dob_year {
    type: number
    sql: ${TABLE}.dob_year ;;
  }

  dimension: found_location {
    type: string
    sql: ${TABLE}.found_location ;;
  }

  dimension: intake_condition {
    type: string
    sql: ${TABLE}.intake_condition ;;
  }

  dimension_group: intake_datetime {
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
    sql: ${TABLE}.intake_datetime ;;
  }

  dimension: intake_hour {
    type: number
    sql: ${TABLE}.intake_hour ;;
  }

  dimension: intake_month {
    type: number
    sql: ${TABLE}.intake_month ;;
  }

  dimension: intake_monthyear {
    type: string
    sql: ${TABLE}.intake_monthyear ;;
  }

  dimension: intake_number {
    type: number
    sql: ${TABLE}.intake_number ;;
  }

  dimension: intake_type {
    type: string
    sql: ${TABLE}.intake_type ;;
  }

  dimension: intake_weekday {
    type: string
    sql: ${TABLE}.intake_weekday ;;
  }

  dimension: intake_year {
    type: number
    sql: ${TABLE}.intake_year ;;
  }

  dimension_group: outcome_datetime {
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
    sql: ${TABLE}.outcome_datetime ;;
  }

  dimension: outcome_hour {
    type: number
    sql: ${TABLE}.outcome_hour ;;
  }

  dimension: outcome_month {
    type: number
    sql: ${TABLE}.outcome_month ;;
  }

  dimension: outcome_monthyear {
    type: string
    sql: ${TABLE}.outcome_monthyear ;;
  }

  dimension: outcome_number {
    type: number
    sql: ${TABLE}.outcome_number ;;
  }

  dimension: outcome_subtype {
    type: string
    sql: ${TABLE}.outcome_subtype ;;
  }

  dimension: outcome_type {
    type: string
    sql: ${TABLE}.outcome_type ;;
  }

  dimension: outcome_weekday {
    type: string
    sql: ${TABLE}.outcome_weekday ;;
  }

  dimension: outcome_year {
    type: number
    sql: ${TABLE}.outcome_year ;;
  }

  dimension: sex_upon_intake {
    type: string
    sql: ${TABLE}.sex_upon_intake ;;
  }

  dimension: sex_upon_outcome {
    type: string
    sql: ${TABLE}.sex_upon_outcome ;;
  }

  dimension: time_in_shelter {
    type: string
    sql: ${TABLE}.time_in_shelter ;;
  }

  dimension: time_in_shelter_days {
    type: number
    sql: ${TABLE}.time_in_shelter_days ;;
    value_format_name: decimal_0
  }

  measure: count {
    type: count
  }

  measure: count_owner_surrender {
    type: count
    filters: {
      field: intake_type
      value: "Owner Surrender"
    }
  }

  measure: count_euthanasia {
    type: count
    filters: {
      field: outcome_type
      value: "Euthanasia"
    }
  }

  measure: average_time_in_shelter_days {
    type: average
    sql: ${time_in_shelter_days} ;;
    value_format_name: decimal_0
    drill_fields: [animal_id_intake, time_in_shelter_days, outcome_type, outcome_subtype]
  }
}
