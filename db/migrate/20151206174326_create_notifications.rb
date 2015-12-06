class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :article_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
