class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.text :desc
      t.string :job_position
      t.string :role
      t.string :email
      t.string :phone
      t.string :mobile
      t.string :address1
      t.string :address2
      t.string :state
      t.string :country
      t.boolean :status

      t.timestamps null: false
    end
  end
end
