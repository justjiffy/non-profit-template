class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user_id
      t.string :title
      t.text :body
      t.string :tags
      t.string :img

      t.timestamps null: false
    end
  end
end
