class RemoveCodeFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :code, :integer
  end
end
