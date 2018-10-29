class CreateRegistroOrdens < ActiveRecord::Migration[5.2]
  def change
    create_table :registro_ordens do |t|
      t.integer :numero_orden
      t.date :fecha

      t.timestamps
    end
  end
end
