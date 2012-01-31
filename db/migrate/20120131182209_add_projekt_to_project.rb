class AddProjektToProject < ActiveRecord::Migration
  def change
    add_column :projects,  :projekt, :string
  end
end
