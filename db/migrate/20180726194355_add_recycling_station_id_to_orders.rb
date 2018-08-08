class AddRecyclingStationIdToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :recycling_station, foreign_key: true
  end
end
