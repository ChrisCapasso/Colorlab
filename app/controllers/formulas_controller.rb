class FormulasController < ApplicationController
	
	def index
		@formulas = Formula.all
		end

	def new
		@formula = Formula.new
	end

	def create
		p params[:formula][:level].to_i
		p params[:formula][:d_level].to_i
		
		@formula = Formula.new
		@result = @formula.lift(params[:formula][:level].to_i, params[:formula][:d_level].to_i)
		p @result
		
		redirect_to root_path
	end	

	# def show
	# 	render "create"
	# end


end
