class AddOpportunityIdToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :opportunity_id, :integer
  end
end
