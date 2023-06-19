class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json:students
    end
    
    def grades
        students = Student.order(grade: :desc)
        render json:students   
    end

    def highest_grade
        students = Student.all
        highest_grade_student = students.max_by { |student| student.grade}

       render json:highest_grade_student
    end
end
