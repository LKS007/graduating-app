class User < ActiveRecord::Base
  has_secure_password
  has_many :tasks, foreign_key: "current_user_id"
end
