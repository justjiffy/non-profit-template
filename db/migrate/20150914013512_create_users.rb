class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password
      t.boolean :admin
      t.boolean :member
      t.boolean :donor
      t.boolean :volunteer

      t.timestamps null: false
    end
  end
end
