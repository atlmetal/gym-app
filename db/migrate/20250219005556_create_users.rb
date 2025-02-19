class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :role
      t.integer :identification_type
      t.string :identification_number
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
