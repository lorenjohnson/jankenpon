class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :user_move
      t.string :computer_move
      t.timestamps
    end
  end
end
