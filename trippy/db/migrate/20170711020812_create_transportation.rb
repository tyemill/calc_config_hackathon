class CreateTransportation < ActiveRecord::Migration
  def change
    create_table :transportations do |t|
      t.string :mode
      t.string :start
      t.string :end
      t.integer :duration
      t.integer :cost

      t.timestamps
    end
  end
end
