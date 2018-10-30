class ColumnasFaltantes < ActiveRecord::Migration[5.2]
  def change
    add_column :registro_ordens, :cliente_id, :integer
    add_column :detalle_ordens, :registro_ordens_id, :integer
    add_column :detalle_ordens, :producto_id, :integer
  end
end
