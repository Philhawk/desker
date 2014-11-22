module ApplicationHelper
  #Rusli Start 
  def intellinav
    nav = ''
    if @current_user.present?
      nav += "<li class=\"navbar-text\"> Welcome #{ @current_user.name } </li>"
      nav += "<li>" + link_to('Edit profile', edit_user_path(@current_user)) + "</li> "
      nav += "<li>#{ link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) }</li>"

    else
      nav += "<li>#{ link_to('Sign Up', new_user_path) }</li>"
      nav += "<li>#{ link_to('Sign In', login_path) }</li>"
    end
  end
  #Rusli End 
end