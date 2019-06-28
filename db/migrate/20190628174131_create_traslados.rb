class CreateTraslados < ActiveRecord::Migration[5.2]
  def change
    create_table :traslados do |t|
      t.references :user, foreign_key: true
      t.references :empresa, foreign_key: true
      t.string :direccion_origen
      t.string :direccion_destino
      t.date :fecha
      t.float :price

      t.timestamps
    end
  end
end
