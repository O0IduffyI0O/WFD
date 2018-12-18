module UsersHelper
  
  def job_title_icon
    if @user.profile.first_name == "First"
      "<i class='fa fa-code'></i>".html_safe
    end  
  end 
  
end