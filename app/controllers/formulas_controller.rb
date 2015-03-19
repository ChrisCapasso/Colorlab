class FormulasController < ApplicationController
	
	def index
		@formulas = Formula.all
		@greys = Grey.all
	end

	def new
		@formula = Formula.new
		@grey = Grey.new
	end

	def create
		p params[:formula][:level].to_i
		p params[:formula][:d_level].to_i
		
		@formula = Formula.new
		@result = @formula.lift(params[:formula][:level].to_i, params[:formula][:d_level].to_i)
		p @result

		@grey = Grey.new
		@grey_result = @grey.greyfinder(params[:grey][:percent].to_i)
		p grey_result
		
		redirect_to root_path
	end	

	# def show
	# 	render "create"
	# end


end
