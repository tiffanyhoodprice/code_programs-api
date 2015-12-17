class AddLanguagesCoursesToCodePrograms < ActiveRecord::Migration
  def change
  
    add_column :code_programs, :languages_courses, :text

  end
end
