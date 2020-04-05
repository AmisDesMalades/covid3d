class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /projects
  # GET /projects.json
  def index
    @projects = policy_scope(Project)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    authorize @project
  end

  # GET /projects/new
  def new
    @project = Project.new
    authorize @project
  end

  # GET /projects/1/edit
  def edit
    authorize @project
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    authorize @project

    @project.thumbnail.attach(params[:project][:thumbnail])
    @project.images.attach(params[:project][:images])
    @project.stls.attach(params[:project][:stls])

    params[:project][:member_ids].each do |member_id|
      unless member_id.empty?
        member = Member.find(member_id)
        @project.members << member
      end
    end

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    authorize @project

    params[:project][:member_ids].each do |member_id|
      unless member_id.empty?
        member = Member.find(member_id)
        @project.members << member
      end
    end

    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    authorize @project

    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = policy_scope(Project).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name, :description, :assembly, :url, :status, :thumbnail, images: [], stls: [], member_ids: [])
    end
end
