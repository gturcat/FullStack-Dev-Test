class PvmesDeclaration < ApplicationRecord
  validates :compagny_siren, presence: true
  validates :compagny_name, presence: true
  validates :adress, presence: true
  validates :customer_name, presence: true
  validates :customer_email, presence: true
  validates :customer_phone, presence: true

  has_many :panels
  accepts_nested_attributes_for :panels
end
