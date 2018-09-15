class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.text :description
      t.float :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
