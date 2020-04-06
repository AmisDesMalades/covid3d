class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /members
  # GET /members.json
  def index
    @members = Member.order(:last_name)
  end

  # GET /members/1
  # GET /members/1.json
  def show
    authorize @member
  end

  # GET /members/new
  def new
    @member = Member.new
    authorize @member
  end

  # GET /members/1/edit
  def edit
    authorize @member
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    authorize @member

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    authorize @member
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    authorize @member
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = policy_scope(Member).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_params
      params.require(:member).permit(:first_name, :last_name, :job, :email, :comment)
    end
end
