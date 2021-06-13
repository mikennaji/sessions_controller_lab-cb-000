class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]
  
def new

end


def create
   session[:name] = params[:name]
   require_login and return
   redirect_to '/'

end


def destroy

  session.delete :name
  require_login
end



end
