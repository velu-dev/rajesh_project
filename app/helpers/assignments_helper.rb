module AssignmentsHelper
  def display_user(assign)
    if assign.nil?
      return "N/A"
    else
      return assign.name
    end
  end

  def display_class(assign)
    if assign.nil?
      return "N/A"
    else
      return assign.class_name
    end
  end
end
