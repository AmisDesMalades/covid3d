class MemberPolicy < ApplicationPolicy
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
    # user && user.admin?
    user 
  end
  
  def update?
    # user && user.admin?
    user 
  end

  def destroy?
    false
  end
end
