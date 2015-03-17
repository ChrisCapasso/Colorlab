class Formula < ActiveRecord::Base

	attr_accessor :level
	attr_accessor :d_level

	def lift(level, d_level)
		if d_level - level == 1
			"Use #{d_level} with 20 Volume developer"
		elsif d_level - level == 2
			"Use #{d_level} with 30 Volume developer and add 1\" of Blue or Ash Additive"
		elsif d_level - level == 3
			"Use #{d_level + 1} with 40 Volume developer and add 2\" of Blue or Ash Additive"
		elsif d_level - level == 4  
			"Use #{d_level + 1} with 40 Volume developer and add 2\" of Blue or Ash Additive, but uncontrolled gold will be present"
		else
			"Prelighten by a professional if you are unable to safely use lightener."
		end
	end
end

# formula = Formula.new
# p formula.lift(2,6)	
# end
