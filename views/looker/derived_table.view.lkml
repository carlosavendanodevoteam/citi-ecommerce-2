# If necessary, uncomment the line below to include explore_source.
# include: "carlos-training-looker.model.lkml"

view: derived_table{
  derived_table: {
    explore_source: order_items {
      column: order_id {}
      column: total_revenue {}
      column: order_item_count {}
    }
  }
  dimension: order_id {
    description: ""
    primary_key: yes
    type: number
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
}
