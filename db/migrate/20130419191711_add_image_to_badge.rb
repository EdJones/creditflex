class AddImageToBadge < ActiveRecord::Migration
  def change
    add_column :badges, :image, :string
  end
end
