class Consultation

	include ActiveModel::Model

	attr_accessor :current_level, :desired_level, :percent_grey, :level, :tone
	COLOR_GUIDE = {1 => {0 => "black", 1 => "blue black"}, 
				   2 => {0 => "Darkest Natural Brown", 1 => "Darkest Ash Brown"},
					3 => {0 => "Dark Natural Brown", 1 => "Dark Ash Brown", 3 => "Tone does not exist at this level", 4 => "Dark Red Brown", 43 => "Tone does not exist at this level", 5 => "Dark Burgundy Brown", 8 => "Tone does not exist at this level"},
					4 => {0 => "Medium Natural Brown", 1 => "Medium Ash Brown", 3 => "Medium Golden Brown", 4 => "Medium Redish Brown", 43 => "Tone does not exist at this level", 5 => "Medium Burgundy Brown", 8 => "Tone does not exist at this level"},
					5 => {0 => "Light Natural Brown", 1 => "Light Ash Brown", 3 => "Light Golden Brown", 43 => "Light Copper Brown", 4 => "Light Red Brown", 5 => "Light Burgundy Brown", 8 => "Tone does not exist at this level"},
					6 => {0 => "Dark Natural Blonde", 1 => "Dark Ash Blonde", 3 => "Dark Golden Blonde", 43 => "Dark Copper Blonde", 4 => "Dark Red Blonde", 5 => "Tone does not exist at this level", 8 => "Tone does not exist at this level"},
					7 => {0 => "Medium Natural Blonde", 1 => "Medium Ash Blonde", 3 => "Medium Golden Blonde", 43 => "Medium Copper Blonde", 4 => "Medium Red Blonde", 5 => "Tone does not exist at this level", 8 => "Tone does not exist at this level"},
					8 => {0 => "Light Natural Blonde", 1 => "Light Ash Blonde", 3 => "Light Golden Blonde", 43 => "Light Copper Blonde", 4 => "Light Red Blonde", 5 => "Tone does not exist at this level", 8 => "Light Violet Blonde"},
					9 => {0 => "Lightest Natural Blonde", 1 => "Lightest Ash Blonde", 3 => "Lightest Golden Blonde", 43 => "Lightest Copper Blonde", 4 => "Lightest Red Blonde", 5 => "Tone does not exist at this level", 8 => "Lightest Violet Blonde"},
					10 => {0 => "Palest Natural Blonde", 1 => "Palest Ash Blonde", 3 => "Palest Golden Blonde", 43=> "Tone does not exist at this level", 4=> "Tone does not exist at this level", 5 => "Tone does not exist at this level", 8 => "Palest Violet Blonde"}}


	def initialize(options = {})
		@current_level = options[:current_level].to_i || 4
		@desired_level = options[:desired_level].to_i || 6
		@percent_grey = options[:percent_grey].to_i || 0
		@level = options[:level].to_i || 6
		@tone = options[:tone].to_i || 0
	end

	def lift
		if @desired_level - @current_level == 1
			"Use Level #{@desired_level} with 20 Volume developer"
		elsif @desired_level - @current_level == 2
			"Use Level #{@desired_level} with 30 Volume developer and add 1\" of Blue or Ash Additive"
		elsif @desired_level - @current_level == 3
			"Use Level #{@desired_level + 1} with 40 Volume developer and add 2\" of Blue or Ash Additive"
		elsif @desired_level - @current_level == 4  
			"Use Level #{@desired_level + 1} with 40 Volume developer and add 2\" of Blue or Ash Additive, but uncontrolled gold will be present"
		else
			"Prelighten by a professional if you are unable to safely use lightener."
		end
	end

	def grey_finder
		if @percent_grey == 100
			"90% of mixture should be your Neutral tone.  Use only 20 volume developer."
		elsif @percent_grey == 75
			"75% of mixture should be your Neutral tone.  Use only 20 Volume developer."
		elsif @percent_grey == 50
			"50% of mixture should be your Neutral tone."
		elsif @percent_grey == 25
			"25% of mixture should be your Neutral tone."
		else @percent_grey == 0
			"No added Neutral tone necessary."
		end
	end

	def image
		"#{@desired_level}.jpg"
	end

	def display_colors
		@level = Dir.glob("app/assets/images/*.jpg")
	end


	def color_finder
		COLOR_GUIDE[@desired_level][@tone]
	end

	def american_color_finder
		current_level = @current_level - 1
		COLOR_GUIDE[current_level][@tone]
	end
end