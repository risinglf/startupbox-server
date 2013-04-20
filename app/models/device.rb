class Device
  include Mongoid::Document
  field :secret_key
  belongs_to :sb_account

  validates_uniqueness_of :secret_key
end
