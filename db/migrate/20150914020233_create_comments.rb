class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_id
      t.string :event_id
      t.text :body

      t.timestamps null: false
    end
  end
end
