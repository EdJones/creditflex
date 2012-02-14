class Resource < ActiveRecord::Base
belongs_to :user
CATEGORIES = %w[District_overview District_plan District_form State_guidance Other]
end
