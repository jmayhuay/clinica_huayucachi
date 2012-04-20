class Cliente < ActiveRecord::Base
  attr_accessible :apellidos, :celular, :dni, :fecha_nacimiento, :nombres, :origen_nombre_mama, :ultima_historia
end
