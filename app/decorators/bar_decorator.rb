class BarDecorator < Draper::Decorator
  delegate_all
  decorates_finders

  def username
    user.username
  end

end
