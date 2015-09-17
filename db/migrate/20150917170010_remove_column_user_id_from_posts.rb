class RemoveColumnUserIdFromPosts < ActiveRecord::Migration

  # ID values were not orginially specified as integers, needed to change!

  def change
  		remove_column :posts, :user_id
  	  	add_column :posts, :user_id, :integer
  end
end
