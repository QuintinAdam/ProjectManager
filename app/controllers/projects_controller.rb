class ProjectsController < ApplicationController

  before_filter :find_project, :only => [:edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @project.tasks.order("position ASC")
  end

  def new
    @project = Project.new
    @project.goals.build
    @project.members.build
    @project.tasks.build
  end

  def edit

  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to @project, notice: 'Your project was created'
    else
      render action: "new"
    end
  end

  def update
    if @project.update_attributes(params[:project])
      redirect_to @project, notice: 'Your project was updated'
    else
      render action: "edit"
    end
  end

  def destroy
    @project.destroy
  end

  def find_project
    @project = Project.find(params[:id])
  end
 
  def sort
    # find the project
    project = Project.find(params[:id])
    params[:task].each_with_index do |id, index|
      project.tasks.find(id).set_list_position(index+1)
      # Project.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end
end