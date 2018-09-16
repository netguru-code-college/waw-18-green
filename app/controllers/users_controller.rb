class UsersController<ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @bars = BarDecorator.decorate_collection(
      Bar.where(user_id: params[:id]).order(rating: :desc).paginate(page: params[:page], per_page: 5)
    )
  end
end