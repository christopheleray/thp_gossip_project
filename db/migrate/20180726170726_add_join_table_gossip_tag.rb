class AddJoinTableGossipTag < ActiveRecord::Migration[5.2]
  def change
    t.belongs_to :gossip, index: true
    t.belongs_to :tag, index: true
  end
end
