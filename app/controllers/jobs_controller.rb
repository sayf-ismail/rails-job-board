class JobsController < ApplicationController
  before_action :set_job, only: %i[ show edit update destroy ]



  # GET /jobs or /jobs.json
  def index
    @jobs = Job.order(params[:sort])
    ip = request.remote_ip || "127.0.0.1:3000"
    @location = Geocoder.search(ip)
    @KM_IN_MILES = 0.621371192

  end

  def createdjobs
    @jobs = Job.all
  end

  def claimedjobs
    @jobs = Job.all
  end

  # GET /jobs/1 or /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
    
  end

  # POST /jobs or /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: "Job was successfully created." }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1 or /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: "Job was successfully updated." }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1 or /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: "Job was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_params
      params.require(:job).permit(:user_id, :address1, :lat1, :long1, :address2, :lat2, :long2, :getter_id)
    end

    # Calculate the distance between two points
    # def calculate_distance(a, b)
    #   Geocoder::Calculations.distance_between(a, b) * @KM_IN_MILES
    # end
    # def self.job_sorted_by_distance
    #   Job.all.sort_by(&:calculate_distance)
    # end

end
