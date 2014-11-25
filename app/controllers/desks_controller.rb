class DesksController < ApplicationController
  before_action :set_desk, only: [:show, :edit, :update, :destroy, :search]


  def mylistings
    @desks = Desk.where(user: @current_user)
  end

  def search
      if params[:search].present?
        @desks = Desk.search(params[:search])
      else
        @desks = Desk.all
      end
  end

  def index
    if params[:search].present?
      @desks = Desk.near(params[:search], 5, :order => 'distance')
    else
    @desks = Desk.all
    end
  end

  # GET /desks/1
  # GET /desks/1.json
  def show
    @reviews = Review.where(desk_id: @desk.id).order("created_at DESC")
    if @reviews.blank?
      @avg_rating = 0
    else
      @avg_rating = @reviews.average(:rating).round(2)
    end
  end


  # GET /desks/new
  def new
    @desk = Desk.new
  end

  # GET /desks/1/edit
  def edit
  end

  # POST /desks
  # POST /desks.json
  def create
    @desk = Desk.new(desk_params)
    @desk.user_id = @current_user.id


    respond_to do |format|
      if @desk.save
        format.html { redirect_to @desk, notice: 'Desk was successfully created.' }
        format.json { render :show, status: :created, location: @desk }
      else
        format.html { render :new }
        format.json { render json: @desk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desks/1
  # PATCH/PUT /desks/1.json
  def update
    respond_to do |format|
      if @desk.update(desk_params)
        format.html { redirect_to @desk, notice: 'Desk was successfully updated.' }
        format.json { render :show, status: :ok, location: @desk }
      else
        format.html { render :edit }
        format.json { render json: @desk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desks/1
  # DELETE /desks/1.json
  def destroy
    @desk.destroy
    respond_to do |format|
      format.html { redirect_to desks_url, notice: 'Desk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desk
      @desk = Desk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desk_params
      params.require(:desk).permit(:title, :description, :price, :address, :desk_type, :thumbnail)
    end
end

