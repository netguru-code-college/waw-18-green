class BarsController < ApplicationController
  before_action :set_bar, only: [:show, :edit, :update, :destroy]

  def index
    @bars = Bar.all
  end

  def show
  end

  def new
    @bar = Bar.new
  end

  def edit
  end

  def create
    @bar = Bar.new(bar_params)
    @bar.user = User.first
    if @bar.save
      redirect_to bars_path
    else
      render 'new'
    end
  end

  def update
    if @bar.update(bar_params)
      redirect_to bar_path(@bar)
    else
      render 'edit'
    end
  end

  def destroy
    @bar.destroy
    redirect_to bars_path
  end

  private
    def set_bar
      @bar = Bar.find(params[:id])
    end

    def bar_params
      params.require(:bar).permit(:name, :address, :description, :rating, :user_id)
    end
end
