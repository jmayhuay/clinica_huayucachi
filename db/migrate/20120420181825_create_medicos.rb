class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.integer :dni
      t.string :nombres
      t.string :apellidos
      t.integer :celular

      t.timestamps
    end
  end
end
