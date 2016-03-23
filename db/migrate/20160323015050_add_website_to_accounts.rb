class AddWebsiteToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :website, :string
  end
end
