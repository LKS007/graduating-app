class User < ActiveRecord::Base
  extend Enumerize  
  has_secure_password

  enumerize :role, in: [:manager, :worker], default: :worker, predicates: true
end
