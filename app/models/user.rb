class User < ActiveRecord::Base
  extend Enumerize  
  has_secure_password

  enumerize :role, in: [:manager, :worker], default: :worker, predicates: true
  has_many :tasks, foreign_key: "current_user_id"
end
