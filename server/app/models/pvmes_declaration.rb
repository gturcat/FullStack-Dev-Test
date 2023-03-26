class PvmesDeclaration < ApplicationRecord
  validates :compagny_siren, presence: true
  validates :compagny_name, presence: true
  validates :adress, presence: true
  validates :customer_name, presence: true
  validates :customer_email, presence: true
  validates :customer_email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :customer_phone, presence: true


  has_many :panels
  accepts_nested_attributes_for :panels

  #allow to filter the pvmes to review only the unchecked
  enum status: { submited: 0, checked: 1 }

  after_create :submited

  private

  #after creation, force the status to submited
  def submited
    self.submited!
  end

end
