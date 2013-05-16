class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :session_id
      t.integer :move

      t.timestamps
    end
  end
end
