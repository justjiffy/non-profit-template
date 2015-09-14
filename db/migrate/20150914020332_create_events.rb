class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :user_id
      t.date :date
      t.time :time
      t.string :location
      t.string :title
      t.text :body
      t.string :fee
      t.boolean :class

      t.timestamps null: false
    end
  end
end
