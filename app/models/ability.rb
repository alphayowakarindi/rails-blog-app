class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    can :read, :all
    can :destroy, Post, author_id: user.id
    # comments
    can :create, Post
    can :create, Comment
    can :destroy, Comment, author_id: user.id
    return unless user.role?

    can :manage, :all
  end
end
