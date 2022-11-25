class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, :all
    can :destroy, Post, author_id: user.id

    return unless user.role?

    can :manage, :all
  end
end
