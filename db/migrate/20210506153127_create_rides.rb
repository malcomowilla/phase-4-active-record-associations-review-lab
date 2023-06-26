class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.integer :number_of_rides_for_a_passenger
      t.timestamps
    end
  end
end
