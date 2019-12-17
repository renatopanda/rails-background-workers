# app/mailers/complex_task_mailer.rb
class ComplexTaskMailer < ApplicationMailer
	default from: 'notifications@example.com'
 
	def task_completed_email
		@task = params[:task]
		@useremail  = 'renato.panda@ipt.pt'
		mail(to: @useremail, subject: 'Task was completed!')
	end
end

