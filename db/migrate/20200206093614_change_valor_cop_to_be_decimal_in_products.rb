class ChangeValorCopToBeDecimalInProducts < ActiveRecord::Migration[6.0]



  def up
    change_table :products do |t|
      t.change :valor_usd, :decimal
      t.change :impuesto, :decimal
      t.change :seguro, :decimal
      t.change :flete, :decimal
      t.change :aduana, :decimal
      t.change :total_envio_usd, :decimal
      t.change :total_envio_cop, :decimal
      t.change :valor_maximo_cop, :decimal
      #
    end
  end


  def dowm
    change_table :products do |t|
      t.change :valor_usd, :float
      t.change :impuesto, :float
      t.change :seguro, :float
      t.change :flete, :float
      t.change :aduana, :float
      t.change :total_envio_usd, :float
      t.change :total_envio_cop, :float
      t.change :valor_maximo_cop, :float
      
    end
  end

end

  # def change
  #   #change_column :products, :valor_usd, :decimal
  #   change_column :products, :impuesto, :decimal
  #   change_column :products, :seguro, :decimal
  #   change_column :products, :flete, :decimal
  #   change_column :products, :aduana, :decimal
  #   change_column :products, :total_envio_usd, :decimal
  #   change_column :products, :total_envio_cop, :decimal
  #   change_column :products, :valor_maximo_cop, :decimal
  # end



