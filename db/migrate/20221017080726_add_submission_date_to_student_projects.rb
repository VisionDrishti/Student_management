class AddSubmissionDateToStudentProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :student_projects, :submissions_date, :date
  end
end
