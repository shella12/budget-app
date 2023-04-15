class EntityController < ApplicationController
  before_action :authenticate_user!
  def new
    @pagename = 'NEW TRANSACTION'
    @categories = Group.all
  end

  def create
    @pagename = 'NEW TRANSACTION'
    @entity = Entity.new(name: params[:name], amount: params[:amount])
    @entity.author = current_user
    @entity.save
    @groups = params[:category]
    @groups.each do |category|
      @entity_groups = EntityGroup.new(entity: @entity, group: Group.find(category))
      puts @entity_groups.errors.messages unless @entity_groups.save
    end
    if @entity.save
      redirect_to group_index_path, notice: 'Saved new transaction'
    else
      @entity.errors.full_messages
    end
  end

  def entity_params
    params.require(:entity).permit(:name, :amount, :category[])
  end
end
