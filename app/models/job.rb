class Job < ActiveRecord::Base
  belongs_to :category
  has_many :applications
  validates :title, presence: true
  validates :description, presence: true

end
