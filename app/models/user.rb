class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         enum role: [:admin, :user, :guest]

  def default_role
    self.role ||= 2
  end
  
  def default_values
  	self.role ||= 0
  end
  
  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end
  
end
