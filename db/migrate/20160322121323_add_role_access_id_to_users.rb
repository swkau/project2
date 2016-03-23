class AddRoleAccessIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_access_id, :integer
  end
end
