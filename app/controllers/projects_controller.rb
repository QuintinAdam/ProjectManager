class ProjectsController < ApplicationController

  before_filter :find_project, :only => [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show

  end

  def new
    @project = Project.new
  end

  def edit

  end

  def create
    @project = Conversation.new(params[:project])
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
end