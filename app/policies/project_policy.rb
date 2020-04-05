class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    @current_user.try(:admin?)
  end
  
  def update?
    @current_user.try(:admin?)
  end

  def destroy?
    false
  end
end
