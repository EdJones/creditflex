class Resource < ActiveRecord::Base
belongs_to :user
COUNTIES = %w[District_overview District_plan District_form State_guidance Other]
CATEGORIES = %w[Adams Allen Ashland Ashtabula Athens Auglaize Belmont Brown Butler Carroll Champaign Clark Clermont Clinton Columbiana Coshocton Crawford Cuyahoga Darke Defiance Delaware Erie Fairfield Fayette Franklin Fulton Gallia Geauga Greene Guernsey Hamilton Hancock Hardin Harrison Henry Highland Hocking Holmes Huron Jackson Jefferson Knox Lake Lawrence Licking Logan Lorain Lucas Madison Mahoning Marion Medina Meigs Mercer Miami Monroe Montgomery Morgan Morrow Muskingum Noble Ottawa Paulding Perry Pickaway Pike Portage Preble Putnam Richland Ross Sandusky Scioto Seneca Shelby Stark Summit Trumbull Tuscarawas Union Van Wert Vinton Warren Washington Wayne Williams Wood Wyandot]
end
