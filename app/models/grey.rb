class Grey < ActiveRecord::Base
	def greyfinder(percent = 0)
		if percent == 100
			"90% of mixture should be your Neutral tone."
		elsif percent == 75
			"75% of mixture should be your Neutral tone."
		elsif percent == 50
			"50% of mixture should be your Neutral tone."
		elsif percent == 25
			"25% of mixture should be your Neutral tone."
		else percent == 0
			"No added Neutral tone necessary tone."
		end
	end
end
