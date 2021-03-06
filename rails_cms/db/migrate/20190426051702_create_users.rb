class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      # t.column "first_name", :string, limit: 50
      t.string "first_name", limit: 50
      t.string "last_name", limit: 50
      t.string "email", default: '', null: false
      t.string "password", limit: 30

      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end
end
