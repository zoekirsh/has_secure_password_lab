class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :password, :string
    add_column :users, :password_confirmation, :string
  end
end
