class AddSubjectToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :subject, :string
    add_column :challenges, :teacher, :string
    add_column :challenges, :district, :string
  end
end
