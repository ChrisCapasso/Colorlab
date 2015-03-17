class FormulasController < ApplicationController
	def new
		@formula = Formula.new
	end

	def create
		p params[:formula][:level].to_i
		p params[:formula][:d_level].to_i
		
		@formula = Formula.new
		@result = @formula.lift(params[:level].to_i, params[:formula][:d_level].to_i)
		p @result
		
		render "new"
		# @formula.lift()
		# puts params.inspect
		# @result = @formula.lift(params[:level], params[:d_level])
		#  puts @result
		# # save
		# # or error handling
		# # render "new"
		# # redirect_to "/formulas/new"
		# redirect_to root_path
	end	

	def show
		render "create"
	end


end
