class CreateDetalleOrdens < ActiveRecord::Migration[5.2]
  def change
    create_table :detalle_ordens do |t|
      t.integer :cantidad
      t.float :precio_venta

      t.timestamps
    end
  end
end
