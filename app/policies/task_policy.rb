class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end
  def create?
    true
  end

  def new?
    true
  end

  def show?
    true
  end

  def update?
    record.user_id  == user.id
  end

  def destroy?
    record.user_id  == user.id
  end
end

