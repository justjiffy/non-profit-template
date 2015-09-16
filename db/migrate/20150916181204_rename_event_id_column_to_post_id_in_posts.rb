class RenameEventIdColumnToPostIdInPosts < ActiveRecord::Migration
  def change
  	  	rename_column :comments, :event_id, :post_id
  end
end
