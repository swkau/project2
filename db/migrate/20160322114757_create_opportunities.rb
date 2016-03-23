class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.text :desc
      t.string :stage
      t.float :value
      t.boolean :status

      t.timestamps null: false
    end
  end
end
