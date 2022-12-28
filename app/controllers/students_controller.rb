class StudentsController < ApplicationController
    def index
        @students = Student.all
   
    GuestsCleanupJob.set(wait: 3.seconds).perform_now("guest")

    end
    
    def new

    @student = Student.new
    end
    def show
      @student = Student.find(params[:id])
    end
    def edit
      @student = Student.find(params[:id])
    end


    def create
        @student = Student.new(student_params)
        if @student.save
            CrudNotificationMailer.create_notification(@student).deliver_now
       
          redirect_to students_path 
        else
          render :new, status: :unprocessable_entity
        end
      end
      private 
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email)
  end
end
 