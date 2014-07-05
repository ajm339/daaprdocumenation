class FileInstancesController < ApplicationController
  before_action :set_file_instance, only: [:show, :edit, :update, :destroy]

  # GET /file_instances
  # GET /file_instances.json
  def index
    @file_instances = FileInstance.all
  end

  # GET /file_instances/1
  # GET /file_instances/1.json
  def show
  end

  # GET /file_instances/new
  def new
    @file_instance = FileInstance.new
  end

  # GET /file_instances/1/edit
  def edit
  end

  # POST /file_instances
  # POST /file_instances.json
  def create
    @file_instance = FileInstance.new(file_instance_params)

    respond_to do |format|
      if @file_instance.save
        format.html { redirect_to @file_instance, notice: 'File instance was successfully created.' }
        format.json { render :show, status: :created, location: @file_instance }
      else
        format.html { render :new }
        format.json { render json: @file_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_instances/1
  # PATCH/PUT /file_instances/1.json
  def update
    respond_to do |format|
      if @file_instance.update(file_instance_params)
        format.html { redirect_to @file_instance, notice: 'File instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_instance }
      else
        format.html { render :edit }
        format.json { render json: @file_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_instances/1
  # DELETE /file_instances/1.json
  def destroy
    @file_instance.destroy
    respond_to do |format|
      format.html { redirect_to file_instances_url, notice: 'File instance was successfully destroyed.' }
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

    @file_instance.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_instance
      @file_instance = FileInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_instance_params
      params.require(:file_instance).permit(:file_type, :name, :description, :id, :user_id)
    end
end
