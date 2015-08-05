# Write code here

class School
	attr_accessor :school_name, :roster

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def roster
		@roster
	end

	def add_student(student_name, grade_num)
		if @roster[grade_num]
			@roster[grade_num].push student_name
		else
			@roster[grade_num] = [student_name]
		end
	end

	def grade(grade_num)
		@roster[grade_num]
	end

	def sort

		sorted = roster.sort.map.to_h

		sorted.each do |k, v|
			v.sort_by! {|l| l[0]}
		end
	end
end