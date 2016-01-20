class CodeProgram < ActiveRecord::Base

  def self.search(search_params)
     @code_programs = CodeProgram.where("keywords LIKE ? OR mission_description LIKE ? OR population_focus LIKE ? OR locations LIKE ?" , "%#{search_params}%", "%#{search_params}%", "%#{search_params}%", "%#{search_params}%")
  end

  
end
