class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nombre_cliente
      t.string :rfc

      t.timestamps
    end
  end
end
