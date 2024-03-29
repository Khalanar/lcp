class BandMembersController < ApplicationController
  before_action :set_band_member, only: %i[ show edit update destroy ]

  # GET /band_members or /band_members.json
  def index
    @band_members = BandMember.all
  end

  # GET /band_members/1 or /band_members/1.json
  def show
  end

  # GET /band_members/new
  def new
    @band_member = BandMember.new
  end

  # GET /band_members/1/edit
  def edit
  end

  # POST /band_members or /band_members.json
  def create
    @band_member = BandMember.new(band_member_params)

    respond_to do |format|
      if @band_member.save
        format.html { redirect_to band_member_url(@band_member), notice: "Band member was successfully created." }
        format.json { render :show, status: :created, location: @band_member }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @band_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /band_members/1 or /band_members/1.json
  def update
    respond_to do |format|
      if @band_member.update(band_member_params)
        format.html { redirect_to band_member_url(@band_member), notice: "Band member was successfully updated." }
        format.json { render :show, status: :ok, location: @band_member }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @band_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band_members/1 or /band_members/1.json
  def destroy
    @band_member.destroy

    respond_to do |format|
      format.html { redirect_to band_members_url, notice: "Band member was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band_member
      @band_member = BandMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def band_member_params
      params.require(:band_member).permit(:name, :bio, :role, :image)
    end
end
