class Historial < ActiveRecord::Base
  attr_accessible :cliente_id, :fecha, :id_externo, :medico_id
end
