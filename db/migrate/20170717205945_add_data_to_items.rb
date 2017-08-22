class AddDataToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :quantity, :integer
    add_column :items, :min_stock, :integer
  end
end
