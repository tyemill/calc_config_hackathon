class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :city
      t.string :activity_name
      t.integer :duration
      t.integer   :weight
      t.integer :cost

      t.timestamps
    end
  end
end
