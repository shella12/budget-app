class EntityController < ApplicationController
  before_action :authenticate_user!
  def index
    @entities = Entity.where(author: current_user).order(created_at: :desc)
    @icons = EntityGroup.includes(:group).all
    @pagename = "TRANSACTION"
  end

  def show
    @entity = Entity.find(params[:id])
    @icons = EntityGroup.includes(:group).where(entity: @entity)
    @pagename = "DETAIL"
  end
  
  def new
    @pagename = "NEW TRANSACTION"
    @categories = Group.all
  end
  
  def create
    @pagename = "NEW TRANSACTION"
    @entity = Entity.new(name: params[:name], amount: params[:amount])
    @entity.author = current_user
    @entity.save
    @groups = params[:category]
    @groups.each do |category|
    @entity_groups = EntityGroup.new(entity: @entity, group: Group.find(category))
    puts @entity_groups.errors.messages unless @entity_groups.save
    end
    if  @entity.save
      redirect_to entity_index_path, notice: "Saved new transaction"
    else
      @entity.errors.full_messages
  end

  end
  def entity_params
    params.require(:entity).permit(:name, :amount, :category[])
    end
end
