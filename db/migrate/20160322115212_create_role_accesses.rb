class CreateRoleAccesses < ActiveRecord::Migration
  def change
    create_table :role_accesses do |t|
      t.string :name
      t.integer :lead_c
      t.integer :lead_r
      t.integer :lead_u
      t.integer :lead_d
      t.integer :account_c
      t.integer :account_r
      t.integer :account_u
      t.integer :account_d
      t.integer :opportunity_c
      t.integer :opportunity_r
      t.integer :opportunity_u
      t.integer :opportunity_d
      t.integer :contact_c
      t.integer :contact_r
      t.integer :contact_u
      t.integer :contact_d
      t.integer :case_c
      t.integer :case_r
      t.integer :case_u
      t.integer :case_d

      t.timestamps null: false
    end
  end
end
