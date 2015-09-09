class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :rating
      t.string :description

      t.timestamps null: false
    end
  end
end
