class CreateUsersCompos < ActiveRecord::Migration
  def change
    create_table :compos_users do |t|
      t.references :user, index: true
      t.references :compo, index: true
    end
  end
end
