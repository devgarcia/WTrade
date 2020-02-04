class AddTotalCostToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :total_cost, :float
  end
end
