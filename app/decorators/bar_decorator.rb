class BarDecorator < Draper::Decorator
  delegate_all

  def username
    user.username
  end
end
