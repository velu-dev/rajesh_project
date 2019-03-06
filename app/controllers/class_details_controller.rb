class ClassDetailsController < ApplicationController
  before_action :set_class_detail, only: [:show, :edit, :update, :destroy]

  # GET /class_details
  # GET /class_details.json
  def index
    @class_details = ClassDetail.all
  end

  # GET /class_details/1
  # GET /class_details/1.json
  def show
  end

  # GET /class_details/new
  def new
    @class_detail = ClassDetail.new
  end

  # GET /class_details/1/edit
  def edit
  end

  # POST /class_details
  # POST /class_details.json
  def create
    @class_detail = ClassDetail.new(class_detail_params)

    respond_to do |format|
      if @class_detail.save
        format.html { redirect_to @class_detail, notice: 'Class detail was successfully created.' }
        format.json { render :show, status: :created, location: @class_detail }
      else
        format.html { render :new }
        format.json { render json: @class_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_details/1
  # PATCH/PUT /class_details/1.json
  def update
    respond_to do |format|
      if @class_detail.update(class_detail_params)
        format.html { redirect_to @class_detail, notice: 'Class detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_detail }
      else
        format.html { render :edit }
        format.json { render json: @class_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_details/1
  # DELETE /class_details/1.json
  def destroy
    @class_detail.destroy
    respond_to do |format|
      format.html { redirect_to class_details_url, notice: 'Class detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_detail
      @class_detail = ClassDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_detail_params
      params.require(:class_detail).permit(:class_name, :description)
    end
end
