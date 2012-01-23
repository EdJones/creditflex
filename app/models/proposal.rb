class Proposal < ActiveRecord::Base
belongs_to :ProposalType
belongs_to :Portfolio
end
