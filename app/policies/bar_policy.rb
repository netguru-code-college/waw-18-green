class BarPolicy
  attr_reader :current_user, :bar

  def initialize(current_user, bar)
    @current_user = current_user
    @bar = bar
  end

  def destroy?
    return false if @current_user == @bar.user
  end
end