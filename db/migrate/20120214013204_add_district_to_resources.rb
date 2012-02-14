class AddDistrictToResources < ActiveRecord::Migration
  def change
    add_column :resources, :district, :string

  end
end
