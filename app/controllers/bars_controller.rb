class BarsController < ApplicationController
  before_action :set_bar, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new]
  before_action :author?, only: [:destroy, :edit]

  def index
    @bars = Bar.all
  end

  def show
    @image = Image.new
  end

  def new
    @bar = Bar.new
  end

  def edit
  end

  def create
    @bar = Bar.new(bar_params)
    @bar.user = current_user
    if @bar.save
      flash[:success] = "Bar was successfully created"
      redirect_to bars_path
    else
      render 'new'
    end
  end

  def update
    @bar.user = current_user
    if @bar.update(bar_params)
      flash[:success] = "Bar was successfully updated"
      redirect_to bar_path(@bar)
    else
      render 'edit'
    end
  end

  def destroy
    @bar.destroy
    flash[:danger] = "Bar was successfully deleted"
    redirect_to bars_path
  end

  private

  def set_bar
    @bar = Bar.find(params[:id])
  end

  def bar_params
    params.require(:bar).permit(:name, :address, :description, :rating, :user_id)
  end

  def author?
    redirect_to bars_path if current_user != @bar.user
  end
  
end
