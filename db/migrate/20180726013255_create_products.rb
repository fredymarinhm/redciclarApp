class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.float :price
      t.float :amount
      t.string :image

      t.timestamps
    end
  end
end
