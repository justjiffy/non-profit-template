class RemoveColumnUserIdFromRsvps < ActiveRecord::Migration
  
# ID values were not orginially specified as integers, needed to change!

  def change
  	  	remove_column :rsvps, :user_id
  		remove_column :rsvps, :event_id
  	  	add_column :rsvps, :user_id, :integer
  	  	add_column :rsvps, :event_id, :integer
  end
end
