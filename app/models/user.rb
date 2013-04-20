class User
  include Mongoid::Document
  has_many :sb_accounts

end
