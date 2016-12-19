module ApplicationHelper

  ESTADOS = [
    ["Bahia", "BA"],
    ["São Paulo", "SP"],
    ["Rio de Janeiro", "RJ"],
    ["Minas Gerais", "MG"],
    ["Espirito Santo", "ES"],
    ["Rio Grade do Sul", "RS"]
  ]

  def options_for_states(selected)
    options_for_select(ESTADOS, selected)
  end

end
