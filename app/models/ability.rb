class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
	
	if user.role == 'admin'
      can :admin, :all
      can :manage, :all
      # some other trainer specific roles here, like editing his/her profile
    elsif user.role == 'student'
      can :read, :all
	  cannot :read, User
	  #can :manage, User, :user_id => user.id
	  can :manage, Project, :student_id => user.id
	  can :create, Project
	  can :create, Response
	  can :create, Resource
	  can :manage, Wish, :user_id => user.id
	  can :manage, Challenge, :user_id => user.id
	elsif user.role == 'teacher'
      can :read, :all
	  cannot :read, User
	  can :manage, Project, :teacher_id => user.id
	  can :create, Project 
	  can :create, Comment
	  can :manage, Request
	  can :create, Resource
	  can :manage, Wish, :user_id => user.id
	  can :manage, Challenge, :user_id => user.id
	elsif user.role == 'moderator'
      can :read, :all
	  cannot :read, User
	  can :manage, Project, :teacher_id => user.id
	  can :create, Project 
	  can :manage, Course
	  cannot :destroy, Course
	  can :manage, Wish, :user_id => user.id
	  can :manage, Challenge, :user_id => user.id
#raise "role: #{user.role }, can create? #{can? :create, Project }"
	else
		can :read, :all
		can :create, User
		cannot :read, User
		#cannot :create, :update, Project
		#cannot :create, :update, Request
		#cannot :update, Course
		cannot :create, Project
		cannot [:create, :update, :destroy], Response
      # some other client specific roles here, like editing his/her profile
	  	 
    end

    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
