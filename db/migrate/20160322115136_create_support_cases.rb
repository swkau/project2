class CreateSupportCases < ActiveRecord::Migration
  def change
    create_table :support_cases do |t|
      t.string :name
      t.text :desc
      t.string :stage
      t.text :solution
      t.boolean :status
      t.datetime :close_date

      t.timestamps null: false
    end
  end
end
