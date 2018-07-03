class BeesController < ApplicationController
  before_action :set_bee, only: [:show, :edit, :update, :destroy]
  before_action :set_hives, only: [:new, :edit]

  def index
    @bees = Bee.all
  end

  def new
    @bee = Bee.new
  end

  def create
    @bee = Bee.create(bee_params)
    if @bee.valid?
      redirect_to @bee
    else
      flash[:errors] = @bee.errors.full_messages
      redirect_to new_bee_path
    end
  end

  def show

  end

  def edit

  end

  def update
    @bee.update(bee_params)
    if @bee.valid?
      redirect_to @bee
    else
      flash[:errors] = @bee.errors.full_messages
      redirect_to edit_bee_path(@bee)
    end
  end

  def destroy
    @bee.destroy
    redirect_to bees_path
  end

  private
  def bee_params
    params.require(:bee).permit(:name, :category, :queen, :hive_id, flower_ids: [])
  end

  def set_bee
    @bee = Bee.find(params[:id])
  end

  def set_hives
    @hives = Hive.all.sort_by { |h| h.name }
  end
end
