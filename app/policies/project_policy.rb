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
    user && user.admin?
  end
  
  def update?
    user && user.admin?
  end
  
  def destroy?
    user && user.admin?
  end
end
