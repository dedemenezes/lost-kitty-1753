class CreatePets < ActiveRecord::Migration[7.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :address
      t.date :found_on, default: Date.today

      t.timestamps
    end
  end
end
