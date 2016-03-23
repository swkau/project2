class AddContactIdToSupportCases < ActiveRecord::Migration
  def change
    add_column :support_cases, :contact_id, :integer
  end
end
