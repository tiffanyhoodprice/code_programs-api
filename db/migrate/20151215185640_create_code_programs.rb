class CreateCodePrograms < ActiveRecord::Migration
  def change
    create_table :code_programs do |t|
      t.text :keywords
      t.string :organization_name
      t.string :website
      t.text :mission_description
      t.text :population_focus
      t.string :time_commitment
      t.text :cost
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.text :locations
      t.string :leadership_contact
      t.string :title
      t.string :email
      t.string :phone_number
      t.string :when_founded

      t.timestamps null: false
    end
  end
end
