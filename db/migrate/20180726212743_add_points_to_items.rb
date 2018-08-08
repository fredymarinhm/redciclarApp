class AddPointsToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :points, :integer
  end
end
