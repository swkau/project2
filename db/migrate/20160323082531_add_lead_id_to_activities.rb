class AddLeadIdToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :lead_id, :integer
  end
end
