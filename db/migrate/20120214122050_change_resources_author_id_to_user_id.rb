class ChangeResourcesAuthorIdToUserId < ActiveRecord::Migration
  def change
    rename_column :resources, :author_id, :user_id
  end
end
