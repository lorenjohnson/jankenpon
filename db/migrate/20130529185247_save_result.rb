class SaveResult < ActiveRecord::Migration
  def up
    add_column :rounds, :result, :string, limit: 255
  end

  def down
    remove_column :rounds, :result
  end
end
