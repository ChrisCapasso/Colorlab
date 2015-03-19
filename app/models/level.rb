class Level < ActiveRecord::Base

	COLOR_GUIDE = {1 => {0 => "black", 1 => "blue black"}, 
				   2 => {0 => "Darkest Natural Brown", 1 => "Darkest Ash Brown"},
					3 => {0 => "Dark Natural Brown", 1 => "Dark Ash Brown", 4 => "Dark Red Brown", 5 => "Dark Burgundy Brown"},
					4 => {0 => "Medium Natural Brown", 1 => "Medium Ash Brown", 3 => "Medium Golden Brown", 4 => "Medium Redish Brown", 5 => "Medium Burgundy Brown"},
					5 => {0 => "Light Natural Brown", 1 => "Light Ash Brown", 3 => "Light Golden Brown", 43 => "Light Copper Brown", 4 => "Light Red Brown", 5 => "Light Burgundy Brown"},
					6 => {0 => "Dark Natural Blonde", 1 => "Dark Ash Blonde", 3 => "Dark Golden Blonde", 43 => "Dark Copper Blonde", 4 => "Dark Red Blonde"},
					7 => {0 => "Medium Natural Blonde", 1 => "Medium Ash Blonde", 3 => "Medium Golden Blonde", 43 => "Medium Copper Blonde", 4 => "Medium Red Blonde"},
					8 => {0 => "Light Natural Blonde", 1 => "Light Ash Blonde", 3 => "Light Golden Blonde", 43 => "Light Copper Blonde", 4 => "Light Red Blonde", 8 => "Light Violet Blonde"},
					9 => {0 => "Lightest Natural Blonde", 1 => "Lightest Ash Blonde", 3 => "Lightest Golden Blonde", 43 => "Lightest Copper Blonde", 4 => "Lightest Red Blonde", 8 => "Lightest Violet Blonde"},
					10 => {0 => "Palest Natural Blonde", 1 => "Palest Ash Blonde", 3 => "Palest Golden Blonde", 8 => "Palest Violet Blonde"}}

	def american_color_finder(level, tone)
		colorfinder(level - 1, tone)
	end

	def colorfinder(level, tone)
		COLOR_GUIDE[level][tone]
	end
end

