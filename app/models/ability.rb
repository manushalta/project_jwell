class Ability
  include CanCan::Ability

  def initialize(user)
      
      user ||= current_user
      if user.is?("superadmin")
        can :manage, :all

      elsif user.is?("admin")
        can :read, :all
        can :create, :all

      elsif user.is?("member")
        puts "========#{user}=========================="
        can :read, :all
        can :update, :all
        can :create, :all

      end
  end
end
