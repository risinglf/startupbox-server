class Goal
  include Mongoid::Document
  field :reached, type: Boolean, default: false
  field :target_value, type: Float, default: 0
  field :current_value, type: Float, default: 0
  field :event_type, type: String
  field :sent_to, type: Array, default: []

  belongs_to :sb_account
  has_many :actions

  def increment_current_value!(value)
    self.inc(:current_value, value)

    if current_value+value >= target_value
      self.reached = true
      self.save!
    end
  end


end
