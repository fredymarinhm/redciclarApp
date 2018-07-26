class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.datetime :date
      t.integer :amount

      t.timestamps
    end
  end
end
