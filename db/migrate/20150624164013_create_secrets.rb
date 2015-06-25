class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :title
      t.string :comment
      t.string :user_id

      t.timestamps null: false
    end
  end
end
