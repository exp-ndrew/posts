class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest

      t.timestamps
    end

    create_table :posts do |t|
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
