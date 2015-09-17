class RemoveColumnUserIdFromComments < ActiveRecord::Migration

# ID values were not orginially specified as integers, needed to change!
  
  def change
  		remove_column :comments, :user_id
  		remove_column :comments, :post_id
  	  	add_column :comments, :user_id, :integer
  	  	add_column :comments, :post_id, :integer
  end
end
