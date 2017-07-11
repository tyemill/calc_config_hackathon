class CreateHospitality < ActiveRecord::Migration
  def change
    create_table :hospitalities do |t|
        t.string :name
        t.string :address
        t.string :city
        t.string :country
        t.integer :cost

        t.timestamps
      end
  end
end
