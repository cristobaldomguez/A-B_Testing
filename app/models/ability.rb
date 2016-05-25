class Ability
  include CanCan::Ability

  def initialize(user)
     user ||= User.new(role: 2)

      if user.sadmin?
        can :manage, :all
        elsif user.admin?
            can :read, :all
            can :manage, Site
            can :read, Ab_test
            can :read, User

            elsif
            cannot :manage, :all
            can :read, :all
        else
            can :read, :all
       end     
    end
end
