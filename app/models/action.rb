class Action
  include Mongoid::Document

  field :type, type: String
  field :text, type: String
  field :url, type: String

  belongs_to :goal


end
