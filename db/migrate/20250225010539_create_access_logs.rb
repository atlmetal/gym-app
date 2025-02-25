class CreateAccessLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :access_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :subscription, null: false, foreign_key: true
      t.datetime :accessed_at

      t.timestamps
    end
  end
end
