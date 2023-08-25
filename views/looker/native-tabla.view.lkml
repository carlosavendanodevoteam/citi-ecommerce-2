# If necessary, uncomment the line below to include explore_source.

# include: "carlos-training-looker.model.lkml"

view: nativetable {
  derived_table: {
    explore_source: order_items {
      column: total_revenue {}
      column: order_item_count {}
      column: order_id {}
      column: user_id {}
    }
    datagroup_trigger: carlos-training-looker_default_datagroup
  }
  dimension: total_revenue {
    description: ""
    value_format: "$#,##0.00"
    type: number
  }
  dimension: order_item_count {
    description: ""
    type: number
  }
  dimension: order_id {
    description: ""
    type: number
  }
  dimension: user_id {
    description: ""
    type: number
  }
}
