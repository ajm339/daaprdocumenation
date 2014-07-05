class FileMethodsController < ApplicationController
  before_action :set_file_method, only: [:show, :edit, :update, :destroy, :vote]

  # GET /file_methods
  # GET /file_methods.json
  def index
    @file_methods = FileMethod.all
  end

  # GET /file_methods/1
  # GET /file_methods/1.json
  def show
  end

  # GET /file_methods/new
  def new
    @file_method = FileMethod.new
  end

  # GET /file_methods/1/edit
  def edit
  end

  # POST /file_methods
  # POST /file_methods.json
  def create
    @file_method = FileMethod.new(file_method_params)

    respond_to do |format|
      if @file_method.save
        format.html { redirect_to @file_method, notice: 'File method was successfully created.' }
        format.json { render :show, status: :created, location: @file_method }
      else
        format.html { render :new }
        format.json { render json: @file_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_methods/1
  # PATCH/PUT /file_methods/1.json
  def update
    respond_to do |format|
      if @file_method.update(file_method_params)
        format.html { redirect_to @file_method, notice: 'File method was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_method }
      else
        format.html { render :edit }
        format.json { render json: @file_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_methods/1
  # DELETE /file_methods/1.json
  def destroy
    @file_method.destroy
    respond_to do |format|
      format.html { redirect_to file_methods_url, notice: 'File method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @file_method.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_method
      @file_method = FileMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_method_params
      params.require(:file_method).permit(:id, :created_by, :name, :description, :input, :output, :file_instance_id)
    end
end
