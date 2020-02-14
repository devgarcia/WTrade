class ChangeFloatDtToBeDecimalInProducts < ActiveRecord::Migration[6.0]
  def up
    change_column :products, :valor_cop, :decimal
  end

  def down
    change_column :products, :valor_cop, :float
  end

end
