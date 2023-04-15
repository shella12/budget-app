class GroupController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = Group.order(created_at: :desc)
    @amounts = Entity.joins(:groups)
      .group('groups.id')
      .select('groups.id as group_id, sum(entities.amount) as total_amount')
    @pagename = 'TRANSACTION'
  end

  def show
    @group = Group.find(params[:id])
    @entities = EntityGroup.includes(:entity).where(group: @group).order(created_at: :desc)
    @pagename = 'DETAIL'
  end

  def new
    @pagename = 'NEW CATEGORY'
    @group = Group.new
  end

  def create
    @pagename = 'NEW CATEGORY'
    @group = Group.new(name: params[:name], icon: params[:icon])
    @group.icon.attach(params[:group][:icon])
    if @group.save
      redirect_to group_index_path, notice: 'Saved new category'
    else
      @group.errors.full_messages
    end
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
