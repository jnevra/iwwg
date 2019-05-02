class DescsController < ApplicationController
  before_action :set_desc, only: [:show, :edit, :update, :destroy]

  # GET /descs
  # GET /descs.json
  def index
    @descs = Desc.all
  end

  # GET /descs/1
  # GET /descs/1.json
  def show
  end

  # GET /descs/new
  def new
    @desc = Desc.new
  end

  # GET /descs/1/edit
  def edit
  end

  # POST /descs
  # POST /descs.json
  def create
    @desc = Desc.new(desc_params)

    respond_to do |format|
      if @desc.save
        format.html { redirect_to @desc, notice: 'Desc was successfully created.' }
        format.json { render :show, status: :created, location: @desc }
      else
        format.html { render :new }
        format.json { render json: @desc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descs/1
  # PATCH/PUT /descs/1.json
  def update
    respond_to do |format|
      if @desc.update(desc_params)
        format.html { redirect_to @desc, notice: 'Desc was successfully updated.' }
        format.json { render :show, status: :ok, location: @desc }
      else
        format.html { render :edit }
        format.json { render json: @desc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descs/1
  # DELETE /descs/1.json
  def destroy
    @desc.destroy
    respond_to do |format|
      format.html { redirect_to descs_url, notice: 'Desc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desc
      @desc = Desc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desc_params
      params.require(:desc).permit(:desc_name)
    end
end
