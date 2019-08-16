connection: "lookerdata_publicdata_standard_sql"

# Include all of the views
include: "/views/**/*.view"

datagroup: austin_animal_center_shelter_intakes_and_outcomes_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: austin_animal_center_shelter_intakes_and_outcomes_default_datagroup

explore: aac_intakes {
  label: "Intakes"
}

explore: aac_intakes_outcomes {
  label: "Intakes & Outcomes"
}

explore: aac_outcomes {
  label: "Outcomes"
}
