class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :carMake
      t.string :carModel
      t.string :carTrim
      t.integer :carYear
      t.integer :carMileage
      t.string :carColor
      t.string :carState
      t.string :carPrice
      t.string :pictureName

      t.timestamps
    end
  end
end
