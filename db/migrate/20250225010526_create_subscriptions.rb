class CreateSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :plan, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :accesses_remaining

      t.timestamps
    end
  end
end
