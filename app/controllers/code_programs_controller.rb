class CodeProgramsController < ApplicationController

  def index
    @code_programs = CodeProgram.all
    # render json: @code_programs
  end

  def show
    @code_program = CodeProgram.find(params[:id])
    p "inside API show PORO METHOD"

    # render json: @code_program
  end

  def search
    @code_programs = CodeProgram.search(params[:search])
    render :index
    # render json: @code_programs
  end

  def delete
    p "Inside PORO destroy method"
    @code_program = CodeProgram.find(params[:id])
    @code_program.destroy
    @code_programs = CodeProgram.all
    render :index
  end

  def new
    @code_program = CodeProgram.new
  end

  def create
    @code_program = CodeProgram.create(
      keywords: params[:keywords], 
      organization_name: params[:organization_name], 
      website: params[:website],
      mission_description: params[:mission_description], 
      population_focus: params[:population_focus],
      time_commitment: params[:time_commitment], 
      cost: params[:cost], 
      languages_courses: params[:languages_courses], 
      address: params[:address], 
      city: params[:city], 
      state: params[:state], 
      zip: params[:zip], 
      locations: params[:locations], 
      leadership_contact: params[:leadership_contact], 
      title: params[:title], 
      email: params[:email], 
      phone_number: params[:phone_number], 
      when_founded: params[:when_founded]
    )
    render :show
  end

  def update
    @code_program = CodeProgram.find(params[:id])
    if @code_program.update(
      keywords: params[:keywords], 
      organization_name: params[:organization_name], 
      website: params[:website],
      mission_description: params[:mission_description], 
      population_focus: params[:population_focus],
      time_commitment: params[:time_commitment], 
      cost: params[:cost], 
      languages_courses: params[:languages_courses], 
      address: params[:address], 
      city: params[:city], 
      state: params[:state], 
      zip: params[:zip], 
      locations: params[:locations], 
      leadership_contact: params[:leadership_contact], 
      title: params[:title], 
      email: params[:email], 
      phone_number: params[:phone_number], 
      when_founded: params[:when_founded]
    )
      render :show
    end
  end

end
