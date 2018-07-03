class FlowersController < ApplicationController
  before_action :set_flower, only: [:show, :edit, :update, :destroy]

  def index
    @flowers = Flower.all
  end

  def show
  end

  def new
    @flower = Flower.new
  end

  def create
    @flower = Flower.create(flower_params)
      if @flower.valid?
        redirect_to @flower
      else
        flash[:errors] =  @flower.errors.full_messages
        redirect_to new_flower_path
      end
  end

  def edit
  end

  def update
    @flower.update(flower_params)
      if @flower.valid?
        redirect_to @flower
      else
        flash[:errors] = @flower.errors.full_messages
        redirect_to edit_flower_path(@flower)
      end
  end

  def destroy
    @flower.destroy
    redirect_to flowers_path
  end

  private

  def flower_params
    params.require(:flower).permit(:name, :color, :pollen_capacity)
  end

  def set_flower
    @flower = Flower.find(params[:id])
  end

end
