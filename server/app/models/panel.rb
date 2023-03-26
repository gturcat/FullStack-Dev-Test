class Panel < ApplicationRecord
  validates :code, length: { is: 6 }, numericality: { only_integer: true }
  validates :code, presence: true
  validates :type_of_panel, presence: true
  validates :type_of_panel, inclusion: { in: %w(photovoltaic hybrid),
                                message: "%{value} is not a valid option for solar panel type"
                              }
  belongs_to :pvmes_declaration

end
