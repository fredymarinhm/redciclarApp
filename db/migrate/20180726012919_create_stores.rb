class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :telephone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
