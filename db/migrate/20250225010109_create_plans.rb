class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :plan_type
      t.integer :duration_days
      t.integer :access_limit
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
