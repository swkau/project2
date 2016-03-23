class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.text :desc
      t.string :source
      t.string :contact_name
      t.string :company_name
      t.string :contact_email
      t.string :phone
      t.boolean :qualified

      t.timestamps null: false
    end
  end
end
