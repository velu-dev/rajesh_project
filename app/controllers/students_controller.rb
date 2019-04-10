class StudentsController < ApplicationController
  def assignment
    @user_assignment = current_user.assignments
    @class_assignment = current_user.class_detail.assignments
  end

  def exam
    @exams = current_user.class_detail.exams
  end

  def events
    @events = Event.all
  end

  def circular
    @circulars = current_user.class_detail.circulars
  end

  def attandance
  end
end
