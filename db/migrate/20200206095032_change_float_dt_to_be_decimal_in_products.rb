class ChangeFloatDtToBeDecimalInProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :valor_cop, :decimal
  end
end
