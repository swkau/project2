class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.text :desc
      t.string :industry
      t.string :relationship_type
      t.string :company_size
      t.string :company_email
      t.string :company_phone
      t.string :company_fax
      t.string :company_address1
      t.string :company_address2
      t.string :company_state
      t.string :company_country
      t.boolean :status

      t.timestamps null: false
    end
  end
end
