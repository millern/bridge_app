class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :hand_id
      t.string :first_bid
      t.string :N1
      t.string :N2
      t.string :N3
      t.string :N4
      t.string :N5
      t.string :N6
      t.string :N7
      t.string :N8
      t.string :N9
      t.string :N10
      t.string :S1
      t.string :S2
      t.string :S3
      t.string :S4
      t.string :S5
      t.string :S6
      t.string :S7
      t.string :S8
      t.string :S9
      t.string :S10
      t.string :E1
      t.string :E2
      t.string :E3
      t.string :E4
      t.string :E5
      t.string :E6
      t.string :E7
      t.string :E8
      t.string :E9
      t.string :E10
      t.string :W1
      t.string :W2
      t.string :W3
      t.string :W4
      t.string :W5
      t.string :W6
      t.string :W7
      t.string :W8
      t.string :W9
      t.string :W10

      t.timestamps
    end
  end
end
