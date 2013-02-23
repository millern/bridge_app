class AddCurrentBidToBids < ActiveRecord::Migration
  def change
    add_column :bids, :current_bid, :string
  end
end
