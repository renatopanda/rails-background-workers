# app/workers/complex_task_worker.rb
class ComplexTaskWorker
  include Sidekiq::Worker

  def perform(task_id)
    task = ComplexTask.find(task_id)
    sleep 5
    task.result = "concluded with results = #{rand(100)}"
    task.save
  end
end

