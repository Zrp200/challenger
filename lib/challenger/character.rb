module Challenger
	class Character
    	attr_reader :race, :skill
    	attr_accessor :notes
    	def initialize(race, skill1, skill2, skill3, skill4, skill5, skill6, notes = Hash.new)
    		raise ArgumentError unless race.is_kind_of? Race
    		@race, @skill, @notes = race, Array.new(6), notes
    		[skill1, skill2, skill3, skill4].each_with_index do |skill, index|
    			begin race.const_get skill.to_sym
        		rescue NameError; Challenger.const_get skill.to_sym end
        		@skill[index] = skill
      		end
    	end
  	end
end
