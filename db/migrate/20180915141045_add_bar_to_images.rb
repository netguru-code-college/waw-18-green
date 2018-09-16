class AddBarToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :bar, foreign_key: true
  end
end
