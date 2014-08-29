class LinkVotesDefaultValueZero < ActiveRecord::Migration
  def change
    change_column :links, :votes, :integer, :null => false, :default => 0
  end
end
