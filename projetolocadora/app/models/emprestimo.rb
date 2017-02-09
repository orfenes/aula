class Emprestimo < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :dvd
end
