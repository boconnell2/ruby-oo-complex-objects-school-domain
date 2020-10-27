# code here!
require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if @roster.key?(grade)
            @roster[grade].push(name)
        else
            @roster[grade] = []
            @roster[grade].push(name)
        end
    end

    def grade(grade_desired)
        @roster[grade_desired]
    end

    def sort
        @roster.each do |k,v|
            @roster[k] = v.sort
        end
    end

end


