class AddAutoOppToGames < ActiveRecord::Migration
  def change
    add_column :games, :auto_opp, :boolean
  end
end
