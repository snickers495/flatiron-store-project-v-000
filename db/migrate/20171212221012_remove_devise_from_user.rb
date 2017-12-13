class RemoveDeviseFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :password_digest, :string
    remove_column :users, :username, :string
  end
end
