class DirectorsController < ApplicationController
  def index
    @directors = Director.page(params[:page]).per(10)

    render("director_templates/index.html.erb")
  end

  def show
    @movie = Movie.new
    @director = Director.find(params.fetch("id_to_display"))

    render("director_templates/show.html.erb")
  end

  def new_form
    @director = Director.new

    render("director_templates/new_form.html.erb")
  end

  def create_row
    @director = Director.new

    @director.name = params.fetch("name")
    @director.dob = params.fetch("dob")
    @director.bio = params.fetch("bio")

    if @director.valid?
      @director.save

      redirect_back(:fallback_location => "/directors", :notice => "Director created successfully.")
    else
      render("director_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @director = Director.find(params.fetch("prefill_with_id"))

    render("director_templates/edit_form.html.erb")
  end

  def update_row
    @director = Director.find(params.fetch("id_to_modify"))

    @director.name = params.fetch("name")
    @director.dob = params.fetch("dob")
    @director.bio = params.fetch("bio")

    if @director.valid?
      @director.save

      redirect_to("/directors/#{@director.id}", :notice => "Director updated successfully.")
    else
      render("director_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @director = Director.find(params.fetch("id_to_remove"))

    @director.destroy

    redirect_to("/directors", :notice => "Director deleted successfully.")
  end
end
