class Contact < ActiveRecord::Base
  belongs_to :kind
  has_one :andress

  accepts_nested_attributes_for :andress

end
