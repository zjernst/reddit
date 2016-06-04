class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title, null: false
      t.text :url
      t.text :content
      t.integer :sub_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    add_index :posts, :sub_id
    add_index :posts, :user_id
  end
end
