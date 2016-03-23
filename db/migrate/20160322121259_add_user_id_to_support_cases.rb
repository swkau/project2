class AddUserIdToSupportCases < ActiveRecord::Migration
  def change
    add_column :support_cases, :user_id, :integer
  end
end
