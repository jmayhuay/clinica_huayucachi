class CreateMedicamentos < ActiveRecord::Migration
  def change
    create_table :medicamentos do |t|
      t.string :descripcion
      t.string :dosis
      t.integer :historia_enfermedad_id

      t.timestamps
    end
  end
end
