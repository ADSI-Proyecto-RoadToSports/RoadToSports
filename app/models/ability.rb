class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.admin?
        can :read, :all
        can :create, :all
        can :update, :all
        can :destroy, :all
    elsif user.usuario?
        #operaciones de leer para todas las vistas
        can :read, Tournament
        can :read, Gallery
        can :read, Album
        can :read, Novelty
        can :read, Activity
        can :read, Rule
        can :read, Sport
        can :read, Team
        can :read, Integrante
        can :read, Event
        can :read, Pfutbol
        can :read, Pbaloncesto
        can :read, Participante
        can :create, Participante
        can :update, Participante
        can :destroy, Participante
        #operaciones de editar para algunas vistas
        can :update, User
        can :update, Integrante do |integrante|
            integrante.try(:user) == user
        end
        
        #operaciones de eliminar para algunas vistas
        can :destroy, Integrante do |integrante|
            integrante.try(:user) == user
        end

        #operaciones de crear para algunas vistas
        #can :create, Integrante do |integrante|
        #    integrante.try(:user) == user
        #end
       
    end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
