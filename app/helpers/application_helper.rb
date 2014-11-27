module ApplicationHelper
  #Rusli Start 
  def intellinav
    nav = ''
    if @current_user.present?
     
      nav += "<li>" + link_to('Edit Profile', edit_user_path(@current_user)) + "</li> "
      nav += "<li>" + link_to('My Listing', mylistings_path(@current_user)) + "</li> "
      nav += "<li>" + link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) + "</li>"
    nav += "</li>"
    else
      nav += "<li>#{ link_to('Sign Up', new_user_path) }</li>"
      nav += "<li>#{ link_to('Log In', login_path) }</li>"
    end
  end
  #Rusli End 
end