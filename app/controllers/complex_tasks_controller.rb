class ComplexTasksController < ApplicationController
  before_action :set_complex_task, only: [:show, :edit, :update, :destroy]

  # GET /complex_tasks
  # GET /complex_tasks.json
  def index
    @complex_tasks = ComplexTask.all
  end

  # GET /complex_tasks/1
  # GET /complex_tasks/1.json
  def show
  end

  # GET /complex_tasks/new
  def new
    @complex_task = ComplexTask.new
  end

  # GET /complex_tasks/1/edit
  def edit
  end

  # POST /complex_tasks
  def create
    @complex_task = ComplexTask.new(complex_task_params)
    @complex_task.result = "not computed yet."
    if @complex_task.save
      # enqueue job
      ComplexTaskJob.perform_later(@complex_task)
      redirect_to @complex_task, notice: 'Complex task was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /complex_tasks/1
  # PATCH/PUT /complex_tasks/1.json
  def update
    respond_to do |format|
      if @complex_task.update(complex_task_params)
        format.html { redirect_to @complex_task, notice: 'Complex task was successfully updated.' }
        format.json { render :show, status: :ok, location: @complex_task }
      else
        format.html { render :edit }
        format.json { render json: @complex_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complex_tasks/1
  # DELETE /complex_tasks/1.json
  def destroy
    @complex_task.destroy
    respond_to do |format|
      format.html { redirect_to complex_tasks_url, notice: 'Complex task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complex_task
      @complex_task = ComplexTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complex_task_params
      params.require(:complex_task).permit(:title, :result)
    end
end
