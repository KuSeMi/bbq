class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def destroy?
    update?
  end

  def edit?
    update?
  end

  def update?
    user_is_owner?(record)
  end

  private

  def user_is_owner?(event)
    user.present? && (event.try(:user) == user)
  end
end
