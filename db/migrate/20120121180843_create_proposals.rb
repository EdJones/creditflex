class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.integer :student_id
      t.integer :portfolio_id
      t.integer :proposal_type_id
      t.string :title
      t.text :goals
      t.text :description
      t.text :questions
      t.text :resources
      t.text :assessment

      t.timestamps
    end
  end
end
