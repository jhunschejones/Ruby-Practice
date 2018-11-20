class CreatePosts < ActiveRecord::Migration[5.2]
  def self.up
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :body
      t.timestamps
    end
  end
  
  def self.down
    drop_table :posts
  end
end
