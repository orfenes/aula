class Contact < ActiveRecord::Base
  belongs_to :kind
  has_one :andress
  has_many :phones

  # permissoes para ter acesso a endereço
  accepts_nested_attributes_for :andress
  # permissoes para ter acesso a phone
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true

  # validando se o campo esta preenchido
  validates :name, presence: true, length: { minimum: 3}
  validates :email, presence: true


end
