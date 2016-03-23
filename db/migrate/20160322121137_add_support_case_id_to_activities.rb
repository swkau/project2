class AddSupportCaseIdToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :support_case_id, :integer
  end
end
