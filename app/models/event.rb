class Event
  include Mongoid::Document
  field :type, type: String
  field :value, type: Float
  belongs_to :goal

end
