class AddAdminToUsers < ActiveRecord::Migration
  def up
    add_column :users, :admin, :boolean, default: false

    User.find_each do |user|
      user.update admin: false
    end
  end

  def down
    remove_column :users, :admin, :boolean, default: false
  end
end
