class AddTopicToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :topic, :string
  end
end
