class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :user_id
      t.string :event_id
      t.boolean :volunteer

      t.timestamps null: false
    end
  end
end
