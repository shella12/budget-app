class EntityController < ApplicationController
  def index
    @entities = Entity.all
    @icons = EntityGroup.includes(:group).all
  end

  def show
  end

  def new
  end

  def create
  end
end
