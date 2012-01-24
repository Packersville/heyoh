class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    
    if user.admin?
      can :manage, :all
    end
    if user.admin == false
      can :manage, UsersPick
      can :read, Week
      can :manage, Game
    end 
  end
end