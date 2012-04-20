class Medicamento < ActiveRecord::Base
  attr_accessible :descripcion, :dosis, :historia_enfermedad_id
end
