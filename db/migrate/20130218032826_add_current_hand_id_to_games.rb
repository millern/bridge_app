class AddCurrentHandIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :hand_id, :integer
  end
end
