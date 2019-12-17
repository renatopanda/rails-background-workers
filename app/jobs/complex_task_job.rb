# app/jobs/complex_task_job.rb
class ComplexTaskJob < ApplicationJob
  queue_as :default

  def perform(task)
    # You can have the number of params you want
    sleep 5
    task.result = "concluded with results = #{rand(100)}"
    if task.save
    	ComplexTaskMailer.with(task: task).task_completed_email.deliver_now
    else
    	# send an email about the calculation error?
    	# requeue it?
    end
  end
end
