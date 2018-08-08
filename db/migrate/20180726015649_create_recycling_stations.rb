class CreateRecyclingStations < ActiveRecord::Migration[5.0]
  def change
    create_table :recycling_stations do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.float :latitude
      t.float :longitude
      t.string :description

      t.timestamps
    end
  end
end
