class CreateHistoriaEnfermedads < ActiveRecord::Migration
  def change
    create_table :historia_enfermedads do |t|
      t.integer :historia_id
      t.integer :enfermedad_id

      t.timestamps
    end
  end
end
