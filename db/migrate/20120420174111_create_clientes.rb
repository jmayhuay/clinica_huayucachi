class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :dni
      t.string :origen_nombre_mama
      t.string :nombres
      t.string :apellidos
      t.date :fecha_nacimiento
      t.integer :celular
      t.date :ultima_historia

      t.timestamps
    end
  end
end
