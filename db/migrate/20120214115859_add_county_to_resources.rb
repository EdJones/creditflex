class AddCountyToResources < ActiveRecord::Migration
  def change
    add_column :resources, :county, :string

  end
end
