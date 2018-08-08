class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :code
      t.string :description
      t.float :price
      t.float :amount

      t.timestamps
    end
  end
end
