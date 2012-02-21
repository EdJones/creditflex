class Portfolio < ActiveRecord::Base
#belongs_to :student
#belongs_to :teacher
has_one :Proposal
belongs_to :project
end
