class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_1
      t.integer :user_2
      t.string :name

      t.timestamps
    end
  end
end
