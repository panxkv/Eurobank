class Application < ActiveRecord::Base
  belongs_to :job
  enum status: [:in_progress, :approved, :rejected]
  after_initialize :set_default_status, :if => :new_record?
  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true
  validates :phone, presence: true


  def set_default_status
    self.status ||= :in_progress
    #code
  end
end
