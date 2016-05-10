class Adventure < ActiveRecord::Base
  has_and_belongs_to_many :users, through: :adventures_users
end
