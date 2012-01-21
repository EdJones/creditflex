class CreateProposalStatuses < ActiveRecord::Migration
  def change
    create_table :proposal_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
