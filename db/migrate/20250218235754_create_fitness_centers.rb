class CreateFitnessCenters < ActiveRecord::Migration[7.1]
  def change
    create_table :fitness_centers do |t|
      t.string :nit, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
