class User < ActiveRecord::Base
  has_many :users_picks
  has_many :users_lines
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :lastName, :firstName
  
  def admin?
    self.admin == true rescue false
  end
end
