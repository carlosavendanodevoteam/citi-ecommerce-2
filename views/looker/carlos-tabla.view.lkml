# If necessary, uncomment the line below to include explore_source.

# include: "carlos-training-looker.model.lkml"

view: carlos_tabla {
  derived_table: {
    explore_source: order_items {
      column: user_id {}
      column: order_count {}
      column: total_revenue {}
      derived_column: average_order_revenue {
        sql: total_revenue / order_count ;;
      }
    }
  }
  dimension: user_id {
    description: ""
    type: number
  }
  dimension: order_count {
    description: ""
    type: number
  }
  dimension: average_order_revenue {
    value_format: "$#,##0.00"
    type: number
  }
  dimension: total_revenue {
    description: ""
    value_format: "$#,##0.00"
    type: number
  }
}
