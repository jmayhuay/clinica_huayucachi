class CreateEnfermedads < ActiveRecord::Migration
  def change
    create_table :enfermedads do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
