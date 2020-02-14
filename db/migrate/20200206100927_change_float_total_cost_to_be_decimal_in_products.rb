class ChangeFloatTotalCostToBeDecimalInProducts < ActiveRecord::Migration[6.0]
  def up
    change_column :products, :total_cost, :decimal
  end

    def down
    change_column :products, :total_cost, :float
  end
end
