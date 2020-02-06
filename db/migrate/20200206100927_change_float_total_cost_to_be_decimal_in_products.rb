class ChangeFloatTotalCostToBeDecimalInProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :total_cost, :decimal
  end
end
