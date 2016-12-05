class Api::V1::CodeProgramsController < ApplicationController

  def index
    @code_programs = CodeProgram.all
    # render json: @code_programs
  end

  def show
    @code_program = CodeProgram.find(params[:id])

    p "inside API show action"
    # render json: @code_program
  end

  def destroy
    @code_program = CodeProgram.find(params[:id])
    p "Inside API destroy action"
    @code_program.destroy
    render :index
  end

  # def search
  #   @code_programs = CodeProgram.search(params[:search])
  #   render :index
  #   # render json: @code_programs
  # end

  def search
    search_params = "%#{params[:search_params]}%"
    @code_programs = CodeProgram.where("city like ? OR keywords like ? OR mission_description like? OR organization_name like?", search_params, search_params, search_params, search_params)
    puts "yo"
    p @code_programs
    render :index
  end

  def new
    @code_program = CodeProgram.new
  end

  def create
    @code_program = CodeProgram.new(
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
    if @code_program.save
      render json: @code_program
    else
      render json: {errors: @code_program.errors.full_messages}, status: 422
    end
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
      render json: @code_program
    end
  end

end
