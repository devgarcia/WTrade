class Product < ApplicationRecord


#valor_usd
#valor_cop
#impuesto
#seguro
#flete
#aduana
#total_envio_cop
#total_envio_cop
#accion
#bought
#valor_maximo_cop

before_save :set_impuesto
before_save :set_seguro
before_save :set_flete
before_save :set_aduana
before_save :set_total_envio_usd
before_save :set_total_envio_cop
before_save :set_action
before_save :set_total_cost


def set_valor_cop
  self.valor_cop = valor_usd * exchange_rate
end 

def set_impuesto
  self.impuesto = valor_usd * 0.3
end

def set_seguro
  self.seguro = 5
end

def set_flete
  self.flete = peso * 1.7
end

def set_aduana
  self.aduana = set_flete * 0.147
end

def set_total_envio_usd
  self.total_envio_usd = set_impuesto + set_seguro + set_flete + set_aduana
end

def set_total_envio_cop
  self.total_envio_cop = set_total_envio_usd * exchange_rate
end


def set_total_cost
  self.total_cost = set_total_envio_cop +  set_valor_cop
end 
#
def set_action
  if set_total_cost <= valor_maximo_cop
    self.accion = "COMPRAR"
  else
    self.accion = "MAMANDO"
  end
end

end
