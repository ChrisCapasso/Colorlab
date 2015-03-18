class Level < ActiveRecord::Base

	def colorfinder(level,tone)
		if level == 1 && tone == 0
		"black"

		elsif level == 1 && tone == 1
			"blue black"

		 elsif level == 2 && tone == 0
			"Darkest Natural Brown"

		elsif level == 2 && tone == 1
			"Darkest Ash Brown"

		elsif level == 3 && tone == 0
			"Dark Natural Brown"

		elsif level ==3 && tone == 1
			"Dark Ash Brown"

		elsif level == 3 && tone == 4
			"Dark Red Brown"

		elsif level == 3 && tone == 5
			"Dark Burgundy Brown"

		elsif level == 4 && tone == 0
			"Medium Natural Brown"

		elsif level == 4 && tone == 1
			"Dark Ash Brown"

		elsif level == 4 && tone == 3
			"Medium Golden Brown"

		elsif level == 4 && tone == 4
			"Medium Red Brown"

		elsif level == 4 && tone == 5
			"Medium Burgundy Brown"

		elsif level == 5 && tone == 0
			"Light Natural Brown"

		elsif level == 5 && tone == 1
			"Light Ash Brown"

		elsif level == 5 && tone == 3
			"Light Golden Brown"

		elsif level == 5 && tone == 43
			"Light Copper Brown"

		elsif level == 5 && tone == 4
			"Light Red Brown"

		elsif level == 5 && tone == 5
			"Light Burgundy Brown"

		elsif level == 6 && tone == 0
			"Dark Natural Blonde"

		elsif level == 6 && tone == 1
			"Dark Ash Blonde"

		elsif level == 6 && tone == 3
			"Dark Golden Blonde"

		elsif level == 6 && tone == 43
			"Dark Copper Blonde"

		elsif level == 6 && tone == 4
			"Dark Red Blonde"

		elsif level == 7 && tone == 0
			"Medium Natural Blonde"

		elsif level == 7 && tone == 1
			"Medium Ash Blonde"

		elsif level == 7 && tone == 3
			"Medium Golden Blonde"

		elsif level == 7 && tone == 43
			"Medium Copper Blonde"

		elsif level == 7 && tone == 4
			"Medium Red Blonde"

		elsif level == 8 && tone == 0
			"Light Natural Blonde"

		elsif level == 8 && tone == 1
			"Light Ash Blonde"

		elsif level == 8 && tone == 3
			"Light Golden Blonde"

		elsif level == 8 && tone == 43
			"Light Copper Blonde"

		elsif level == 8 && tone == 4
			"Light Red Blonde"

		elsif level == 8 && tone == 8
			"Light Violet Blonde"

		elsif level == 9 && tone == 0
			"Lightest Natural Blonde"

		elsif level == 9 && tone == 1
			"Lightest Ash Blonde"

		elsif level == 9 && tone == 3
			"Lightest Golden Blonde"

		elsif level == 9 && tone == 43
			"Lightest Copper Blonde"

		elsif level == 9 && tone == 4
			"Lightest Red Blonde"

		elsif level == 9 && tone == 8
			"Lightest Violet Blonde"

		elsif level == 10 && tone == 0
			"Palest Natural Blonde"

		elsif level == 10 && tone == 1
			"Palest Ash Blonde"

		elsif level == 10 && tone == 3
			"Palest Golden Blonde"

		elsif level == 10 && tone == 43
			"Palest Copper Blonde"

		else level == 10 && tone == 8
			"Palest Violet Blonde"
		end
	end
end

