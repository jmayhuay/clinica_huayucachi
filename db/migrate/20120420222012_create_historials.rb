class CreateHistorials < ActiveRecord::Migration
  def change
    create_table :historials do |t|
      t.string :id_externo
      t.date :fecha
      t.integer :cliente_id
      t.integer :medico_id

      t.timestamps
    end
  end
end
