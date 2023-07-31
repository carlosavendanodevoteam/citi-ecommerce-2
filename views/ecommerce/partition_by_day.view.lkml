# The name of this view in Looker is "Partition By Day"
view: partition_by_day {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ecommerce.partition_by_day` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_formatted {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_formatted ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Fullvisitor ID" in Explore.

  dimension: fullvisitor_id {
    type: string
    sql: ${TABLE}.fullvisitorId ;;
  }
  measure: count {
    type: count
  }
}
