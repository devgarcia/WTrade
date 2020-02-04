class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :valor_usd
      t.float :valor_cop
      t.float :impuesto
      t.float :seguro
      t.float :flete
      t.float :aduana
      t.float :total_envio_usd
      t.float :total_envio_cop
      t.string :accion
      t.boolean :bought
      t.float :valor_maximo_cop

      t.timestamps
    end
  end
end
