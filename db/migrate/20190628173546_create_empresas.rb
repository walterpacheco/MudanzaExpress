class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.integer :telefono
      t.string :rut

      t.timestamps
    end
  end
end
