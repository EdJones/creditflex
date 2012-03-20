class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.integer :user_id
      t.integer :course_id
      t.text :body

      t.timestamps
    end
  end
end
