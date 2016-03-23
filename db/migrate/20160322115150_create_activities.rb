class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :type
      t.text :desc
      t.datetime :start
      t.datetime :end
      t.boolean :status

      t.timestamps null: false
    end
  end
end
