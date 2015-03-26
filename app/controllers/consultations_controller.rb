class ConsultationsController < ApplicationController
	
	def index
		@consultation = Consultation.new
		@grey = @consultation.percent_grey
	end

	def new
		@consultation = Consultation.new
	end

	def create
		p params[:consultation][:current_level].to_i
		p params[:consultation][:desired_level].to_i
		
		@consultation = Consultation.new()
		@result = @consultation.lift(params[:formula][:current_level].to_i, params[:formula][:desired_level].to_i)
		p @result
		redirect_to root_path
	end

	def result
		@consultation = Consultation.new(params[:consultation])
		# p params[:consultation][:level].to_i
		# p params[:consultation][:d_level].to_i
	end	
end
