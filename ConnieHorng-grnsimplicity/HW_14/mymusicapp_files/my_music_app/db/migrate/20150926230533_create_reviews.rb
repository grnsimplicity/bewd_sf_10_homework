class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.string :user
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
