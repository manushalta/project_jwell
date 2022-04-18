class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 def is?( requested_role )
    self.role == requested_role.to_s
  end

end
