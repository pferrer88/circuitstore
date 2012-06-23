class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string

    add_column :users, :verified, :boolean

  end
end
