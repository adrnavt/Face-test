class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :email, :string
    add_column :users, :location, :string
    add_column :users, :gender, :string
  end
end
