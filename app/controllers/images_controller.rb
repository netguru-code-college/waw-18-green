class ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to bar_path(@image.bar), notice: "Image added"
    else
      flash[:notice] = @image.errors.full_messages.first
      redirect_to bar_path(@image.bar), notice: "Something went wrong"
    end
  end

  def new
    @image = Image.new
  end

  private

  def image_params
    params.require(:image).permit(:image, :bar_id)
  end
end
