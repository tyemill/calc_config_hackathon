class CreateTransportation < ActiveRecord::Migration[4.2.8]
  def change
    create_table :transportations do |t|
      t.string :mode
      t.string :start
      t.string :end
      t.int    :duration
      t.int    :cost

      t.timestamps
    end
  end
end

class CreateHospitality < ActiveRecord::Migration[4.2.8]
  def change
    create_table :hospitality do |t|
      t.string :type
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.int    :cost

      t.timestamps
    end
  end
end

class CreateActivities < ActiveRecord::Migration[4.2.8]
  def change
    create_table :activities do |t|
      t.string :city
      t.string :activity_name
      t.int    :duration
      t.int    :weight
      t.int    :cost

      t.timestamps
    end
  end
end
