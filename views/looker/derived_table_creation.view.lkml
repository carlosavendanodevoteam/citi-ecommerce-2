
view: derived_table_creation {
  derived_table: {
    sql: SELECT order_items.user_id as user_id,
      count(order_items.order_id) AS order_item_count,
      sum(order_items.sale_price) AS revenue

      from carlos-avendano-sandbox.looker.order_items
      group by 1 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: order_item_count {
    type: number
    sql: ${TABLE}.order_item_count ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  set: detail {
    fields: [
        user_id,
  order_item_count,
  revenue
    ]
  }
}
