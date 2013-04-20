class Goal
  include Mongoid::Document
  field :reached, type: Boolean, default: false
  field :target_value, type: Float
  field :current_value, type: Float
  field :event_type, type: String
  field :sent_to, type: Array, default: []

  belongs_to :sb_account
  has_many :actions

end
