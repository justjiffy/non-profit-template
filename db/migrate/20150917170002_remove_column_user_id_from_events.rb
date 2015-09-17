class RemoveColumnUserIdFromEvents < ActiveRecord::Migration

 # ID values were not orginially specified as integers, needed to change!

  def change
  	  	remove_column :events, :user_id
  	  	add_column :events, :user_id, :integer
  end
end
