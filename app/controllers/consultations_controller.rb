class ConsultationsController < ApplicationController
	
	def index
		@consultation = Consultation.new
		@grey = @consultation.percent_grey
	end

	def new
		@consultation = Consultation.new
	end

	def create
		p params[:consultation][:level].to_i
		p params[:consultation][:d_level].to_i
		
		@consultation = Consultation.new()
		@result = @consultation.lift(params[:formula][:level].to_i, params[:formula][:d_level].to_i)
		p @result

		@grey = Greyfinder.new
		@grey_result = @grey.Greyfinder(params[:grey][:percent].to_i)
		p @grey_result
		
		redirect_to root_path
	end

	def result
		@consultation = Consultation.new(params[:consultation])
	end	
end
