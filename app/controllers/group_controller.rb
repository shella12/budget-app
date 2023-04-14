class GroupController < ApplicationController
  def new
    @pagename = "NEW CATEGORY"
    @group=Group.new
  end

  def create
    @pagename = "NEW CATEGORY"
    @group = Group.new(name: params[:name], icon: params[:icon])
    @group.icon.attach(params[:group][:icon])
    if  @group.save
      redirect_to entity_index_path, notice: "Saved new category"
    else
      @group.errors.full_messages
  end
  end

  def group_params
  params.require(:group).permit(:name, :icon)
  end
end
