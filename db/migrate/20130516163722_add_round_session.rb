class AddRoundSession < ActiveRecord::Migration
  def change
    add_column :rounds, :session_id, :string
  end
end
