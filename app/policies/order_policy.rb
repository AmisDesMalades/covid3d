class OrderPolicy < ApplicationPolicy
  attr_reader :user, :order

  def initialize(user, order)
    @user = user
    @order = order
  end
  
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user_id: @current_user.id)
      end
    end
  end

  def index?
    user && user.admin?
  end

  def show?
    user
  end

  def create?
    user
  end
  
  def update?
    user && user.admin?
  end
  
  def destroy?
    user && user.admin?
  end
end
