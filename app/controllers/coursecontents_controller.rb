class CoursecontentsController < ApplicationController
  before_action :set_coursecontent, only: [:show, :edit, :update, :destroy]

  # GET /coursecontents
  # GET /coursecontents.json
  def index
    @coursecontents = Coursecontent.all
  end

  # GET /coursecontents/1
  # GET /coursecontents/1.json
  def show
  end

  # GET /coursecontents/new
  def new
    @coursecontent = Coursecontent.new
  end

  # GET /coursecontents/1/edit
  def edit
  end

  # POST /coursecontents
  # POST /coursecontents.json
  def create
    @coursecontent = Coursecontent.new(coursecontent_params)

    respond_to do |format|
      if @coursecontent.save
        format.html { redirect_to @coursecontent, notice: 'Coursecontent was successfully created.' }
        format.json { render :show, status: :created, location: @coursecontent }
      else
        format.html { render :new }
        format.json { render json: @coursecontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coursecontents/1
  # PATCH/PUT /coursecontents/1.json
  def update
    respond_to do |format|
      if @coursecontent.update(coursecontent_params)
        format.html { redirect_to @coursecontent, notice: 'Coursecontent was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursecontent }
      else
        format.html { render :edit }
        format.json { render json: @coursecontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursecontents/1
  # DELETE /coursecontents/1.json
  def destroy
    @coursecontent.destroy
    respond_to do |format|
      format.html { redirect_to coursecontents_url, notice: 'Coursecontent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursecontent
      @coursecontent = Coursecontent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursecontent_params
      params.require(:coursecontent).permit(:course_id, :content_name, :content_description)
    end
end
