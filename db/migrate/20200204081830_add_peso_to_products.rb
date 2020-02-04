class AddPesoToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :peso, :float
  end
end
