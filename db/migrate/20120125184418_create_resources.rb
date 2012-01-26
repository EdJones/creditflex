class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :author_id
      t.string :category
      t.string :url
      t.text :description
      t.integer :viewed

      t.timestamps
    end
  end
end
