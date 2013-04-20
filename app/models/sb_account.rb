class SbAccount
  include Mongoid::Document
  belongs_to :user
  has_many :devices
  has_many :goals
  has_many :events
end
