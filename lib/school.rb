class School 
  attr_accessor :name, :roster

    def initialize(name)
      @name = name 
      @roster = {}
    end 
    
    
    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end


    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, students|
          sorted_roster[grade] = students.sort
        end
        sorted_roster
      end
    end
#Here you use .each to iterate through the nested collection, naming the grade keys as 
#'grade' and the student arrays as 'students'. Then you are iterating over each student 
#array per each grade key and adding them (at the same time .sort ing them) into the
#'sorted_roster' you created earlier. 