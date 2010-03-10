class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :text
      t.time :timestamp
      t.string :priority
      t.integer :user_id
      t.integer :reply_to

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
