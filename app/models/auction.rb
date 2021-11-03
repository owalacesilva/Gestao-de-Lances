class Auction < ApplicationRecord
  # This is based in ActiveRecord::Enum module
  enum status: { 
    created: 'created', 
    confirmed: 'confirmed',
    canceled: 'canceled', 
    finished: 'finished', 
    deleted: 'deleted' 
  }

  # Associations
  belongs_to :admin, class_name: 'Admin'
  belongs_to :user, class_name: 'User', optional: true

  # Validates
  validates :admin, presence: true
  validates :status, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :opening_bid, presence: true

  before_validation do
    self.status = :created
  end
end
