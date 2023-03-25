class Panel < ApplicationRecord
  validates :code, presence: true
  validates :code, length: { is: 6 }, numericality: { only_integer: true }
  belongs_to :pvmes_declaration
end
