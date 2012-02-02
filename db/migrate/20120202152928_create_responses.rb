class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :request
      t.string :title
      t.text :body
      t.references :user

      t.timestamps
    end
    add_index :responses, :request_id
    add_index :responses, :user_id
  end
end
